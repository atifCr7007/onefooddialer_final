import 'dart:io';
import 'dart:convert';
import 'package:yaml/yaml.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';
import 'package:mustache_template/mustache.dart';

void main(List<String> args) async {
  final specArg = _arg(args, '--spec') ?? 'openapi.yaml';
  final outArg = _arg(args, '--out') ?? 'lib/features';
  final uiRoot = Directory(outArg);
  uiRoot.createSync(recursive: true);

  final specFile = File(specArg);
  if (!specFile.existsSync()) {
    stderr.writeln('Spec not found: $specArg');
    exit(2);
  }

  final spec = loadYaml(await specFile.readAsString()) as Map;
  final paths = (spec['paths'] as Map?) ?? {};
  final tags = <String, Map<String, dynamic>>{};

  for (final e in paths.entries) {
    final path = e.key;
    final ops = (e.value as Map?) ?? {};
    for (final opEntry in ops.entries) {
      final method = opEntry.key.toString().toUpperCase();
      final opRaw = opEntry.value;
      final op = opRaw == null ? <String, dynamic>{} : (opRaw is Map ? opRaw.cast<String, dynamic>() : <String, dynamic>{});
      if (op.isEmpty) continue; // Skip if operation is null or empty
      final opTags = (op['tags'] as List?)?.cast<String>() ?? [];
      if (opTags.isEmpty) continue;
      final tag = opTags.first;
      tags.putIfAbsent(tag, () => <String, dynamic>{
        'name': tag,
        'baseRoute': tag.toLowerCase(),
        'paths': <String, Map<String, dynamic>>{},
      });
      final t = tags[tag]!;
      final pathsMap = t['paths'] as Map<String, dynamic>;
      pathsMap.putIfAbsent(path, () => <String, dynamic>{});
      (pathsMap[path] as Map<String, dynamic>)[method] = op;
    }
  }

  // Write generated feature routes file in the main app
  final routesFile = File('../../lib/ui/feature_routes.g.dart');
  final buf = StringBuffer();
  buf.writeln("import 'package:go_router/go_router.dart';");
  for (final k in tags.keys) {
    final base = k.toLowerCase();
    final cls = ReCase(k).pascalCase;
    buf.writeln("import 'package:food_one/features/$base/list_page.dart';");
  }
  buf.writeln("");
  buf.writeln("List<RouteBase> generatedFeatureRoutes() => [");
  for (final k in tags.keys) {
    final base = k.toLowerCase();
    final cls = ReCase(k).pascalCase;
    buf.writeln("  GoRoute(path: '/features/$base', builder: (ctx, st) => ${cls}ListPage()),");
  }
  buf.writeln("];");
  await routesFile.create(recursive: true);
  await routesFile.writeAsString(buf.toString());

  for (final tag in tags.values) {
    final name = tag['name'] as String;
    final baseRoute = (tag['baseRoute'] as String);
    final className = ReCase(name).pascalCase;
    final featureDir = Directory(p.join(uiRoot.path, baseRoute));
    featureDir.createSync(recursive: true);

    final pathsMap = (tag['paths'] as Map).cast<String, Map>();

    // Guess list path and byId path
    String listPath = '';
    for (final k in pathsMap.keys) {
      if ((pathsMap[k]!['GET']) != null) {
        listPath = k;
        break;
      }
    }
    String byIdPath = '$listPath/{id}';
    for (final k in pathsMap.keys) {
      if (k.contains('{id}')) {
        byIdPath = k;
        break;
      }
    }

    final data = {
      'tag': name,
      'baseRoute': baseRoute,
      'className': className,
      'listPath': listPath,
      'byIdPath': byIdPath,
    };

    await File(p.join(featureDir.path, 'providers.dart')).writeAsString(
        Template(_tmplProviders, htmlEscapeValues: false).renderString(data));
    await File(p.join(featureDir.path, 'list_page.dart')).writeAsString(
        Template(_tmplList, htmlEscapeValues: false).renderString(data));
    await File(p.join(featureDir.path, 'details_page.dart')).writeAsString(
        Template(_tmplDetails, htmlEscapeValues: false).renderString(data));
    await File(p.join(featureDir.path, 'form_page.dart')).writeAsString(
        Template(_tmplForm, htmlEscapeValues: false).renderString(data));
  }

  stdout.writeln('Extended Flutter views emitted to ${uiRoot.path}');
}

String? _arg(List<String> args, String name) {
  final i = args.indexOf(name);
  if (i >= 0 && i + 1 < args.length) return args[i + 1];
  return null;
}

const _tmplProviders = r'''
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final {{baseRoute}}ClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '{{listPath}}',
    byIdPath: '{{byIdPath}}',
  );
});

final {{baseRoute}}ListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read({{baseRoute}}ClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final {{baseRoute}}GetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read({{baseRoute}}ClientProvider);
  return api.get(id);
});
''';

const _tmplList = r'''
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'package:food_one/widgets/confirm_dialog.dart';
import 'package:shimmer/shimmer.dart';

class {{className}}ListPage extends ConsumerStatefulWidget {
  const {{className}}ListPage({super.key});

  @override
  ConsumerState<{{className}}ListPage> createState() => _{{className}}ListPageState();
}

class _{{className}}ListPageState extends ConsumerState<{{className}}ListPage> {
  int page = 1;
  int perPage = 10;
  String q = '';
  final selected = <int>{};
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final params = {'page': page, 'per_page': perPage, 'search': q};
    final asyncData = ref.watch({{baseRoute}}ListProvider(params));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Enhanced search bar with clear button
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search {{tag}}...',
                    suffixIcon: q.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              searchController.clear();
                              setState(() => q = '');
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onChanged: (v) => setState(() => q = v),
                ),
              ),
              const SizedBox(width: 12),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('New'),
              ),
            ],
          ),
        ),
        // Content area with enhanced states
        Expanded(
          child: asyncData.when(
            loading: () => _buildLoadingSkeleton(),
            error: (e, st) => _buildErrorState(e.toString()),
            data: (rows) {
              if (rows is! List || rows.isEmpty) {
                return _buildEmptyState();
              }
              return Column(
                children: [
                  // Results count
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          '${rows.length} results',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        if (selected.isNotEmpty) ...[
                          const Spacer(),
                          Text(
                            '${selected.length} selected',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(width: 8),
                          TextButton.icon(
                            onPressed: () => setState(() => selected.clear()),
                            icon: const Icon(Icons.clear_all, size: 16),
                            label: const Text('Clear'),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  // List view
                  Expanded(
                    child: ListView.separated(
                      itemCount: rows.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, i) {
                        final row = rows[i] as Map;
                        return ListTile(
                          leading: Checkbox(
                            value: selected.contains(i),
                            onChanged: (v) => setState(() {
                              v == true ? selected.add(i) : selected.remove(i);
                            }),
                          ),
                          title: Text(
                            (row['name'] ?? row['title'] ?? row['id']).toString(),
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            _formatSubtitle(row),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Wrap(
                            spacing: 4,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.visibility),
                                tooltip: 'View details',
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                tooltip: 'Edit',
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                tooltip: 'Delete',
                                onPressed: () => showConfirmDialog(
                                  context,
                                  'Delete Item',
                                  'Are you sure you want to delete this item?',
                                  onConfirm: () {},
                                ),
                              ),
                            ],
                          ),
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        // Enhanced pagination
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: page > 1 ? () => setState(() => page--) : null,
                icon: const Icon(Icons.chevron_left),
                tooltip: 'Previous page',
              ),
              Text('Page $page'),
              IconButton(
                onPressed: () => setState(() => page++),
                icon: const Icon(Icons.chevron_right),
                tooltip: 'Next page',
              ),
              const Spacer(),
              DropdownButton<int>(
                value: perPage,
                items: [10, 25, 50, 100].map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text('$value per page'),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      perPage = value;
                      page = 1;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatSubtitle(Map row) {
    final parts = <String>[];
    if (row.containsKey('email')) parts.add(row['email'].toString());
    if (row.containsKey('phone')) parts.add(row['phone'].toString());
    if (row.containsKey('status')) parts.add('Status: ${row['status']}');
    return parts.isEmpty ? row.toString() : parts.join(' • ');
  }

  Widget _buildLoadingSkeleton() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            title: Container(
              height: 16,
              color: Colors.white,
            ),
            subtitle: Container(
              height: 12,
              color: Colors.white,
              margin: const EdgeInsets.only(top: 4),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox_outlined,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No {{tag}} found',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            q.isEmpty
                ? 'Get started by creating your first item'
                : 'No results match your search',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Create New'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[300],
          ),
          const SizedBox(height: 16),
          Text(
            'Oops! Something went wrong',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Unable to load data. Please try again.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
''';

const _tmplDetails = r'''
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'dart:convert';
import 'package:shimmer/shimmer.dart';

class {{className}}DetailsPage extends ConsumerWidget {
  final Object id;
  const {{className}}DetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch({{baseRoute}}GetProvider(id));
    return asyncData.when(
      loading: () => _buildLoadingSkeleton(context),
      error: (e, st) => _buildErrorState(context, e.toString()),
      data: (data) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with actions
            Row(
              children: [
                Expanded(
                  child: Text(
                    '{{className}} Details',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  tooltip: 'Edit',
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  tooltip: 'Delete',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Data display
            if (data is Map) ..._buildDataFields(context, data)
            else Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SelectableText(
                  const JsonEncoder.withIndent('  ').convert(data),
                  style: const TextStyle(fontFamily: 'monospace'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDataFields(BuildContext context, Map data) {
    final widgets = <Widget>[];
    data.forEach((key, value) {
      widgets.add(
        Card(
          child: ListTile(
            title: Text(
              _formatKey(key.toString()),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                value?.toString() ?? 'N/A',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      );
      widgets.add(const SizedBox(height: 8));
    });
    return widgets;
  }

  String _formatKey(String key) {
    return key
        .replaceAll('_', ' ')
        .split(' ')
        .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  Widget _buildLoadingSkeleton(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 32,
              width: 200,
              color: Colors.white,
            ),
            const SizedBox(height: 24),
            ...List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12,
                          width: 100,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[300],
          ),
          const SizedBox(height: 16),
          Text(
            'Failed to load details',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Unable to retrieve the information',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
''';

const _tmplForm = r'''
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class {{className}}FormPage extends StatefulWidget {
  final Map<String, dynamic>? initialData;
  const {{className}}FormPage({super.key, this.initialData});

  @override
  State<{{className}}FormPage> createState() => _{{className}}FormPageState();
}

class _{{className}}FormPageState extends State<{{className}}FormPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialData == null ? 'Create {{className}}' : 'Edit {{className}}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
      body: FormBuilder(
        key: formKey,
        initialValue: widget.initialData ?? {},
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Form header
            Text(
              widget.initialData == null
                  ? 'Fill in the details below'
                  : 'Update the information',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 24),
            // Name field
            FormBuilderTextField(
              name: 'name',
              decoration: InputDecoration(
                labelText: 'Name *',
                hintText: 'Enter name',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: 'Name is required'),
                FormBuilderValidators.minLength(2, errorText: 'Name must be at least 2 characters'),
                FormBuilderValidators.maxLength(100, errorText: 'Name must not exceed 100 characters'),
              ]),
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(height: 16),
            // Email field
            FormBuilderTextField(
              name: 'email',
              decoration: InputDecoration(
                labelText: 'Email *',
                hintText: 'Enter email address',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: 'Email is required'),
                FormBuilderValidators.email(errorText: 'Please enter a valid email address'),
              ]),
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(height: 16),
            // Phone field
            FormBuilderTextField(
              name: 'phone',
              decoration: InputDecoration(
                labelText: 'Phone',
                hintText: 'Enter phone number',
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.phone,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(errorText: 'Please enter a valid phone number'),
              ]),
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(height: 16),
            // Status field
            FormBuilderSwitch(
              name: 'status',
              title: const Text('Active'),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              initialValue: true,
            ),
            const SizedBox(height: 32),
            // Submit button
            SizedBox(
              height: 48,
              child: FilledButton(
                onPressed: isSubmitting ? null : _handleSubmit,
                child: isSubmitting
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : Text(widget.initialData == null ? 'Create' : 'Update'),
              ),
            ),
            const SizedBox(height: 16),
            // Cancel button
            SizedBox(
              height: 48,
              child: OutlinedButton(
                onPressed: isSubmitting ? null : () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleSubmit() async {
    if (formKey.currentState?.saveAndValidate() ?? false) {
      setState(() => isSubmitting = true);

      try {
        final value = formKey.currentState!.value;

        // Simulate API call
        await Future.delayed(const Duration(seconds: 1));

        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.white),
                const SizedBox(width: 12),
                Text(widget.initialData == null
                    ? 'Successfully created!'
                    : 'Successfully updated!'),
              ],
            ),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
          ),
        );

        Navigator.of(context).pop(value);
      } catch (e) {
        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.error, color: Colors.white),
                const SizedBox(width: 12),
                const Expanded(child: Text('Failed to save. Please try again.')),
              ],
            ),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(
              label: 'Retry',
              textColor: Colors.white,
              onPressed: _handleSubmit,
            ),
          ),
        );
      } finally {
        if (mounted) {
          setState(() => isSubmitting = false);
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Row(
            children: [
              Icon(Icons.warning, color: Colors.white),
              SizedBox(width: 12),
              Expanded(child: Text('Please fix the errors in the form')),
            ],
          ),
          backgroundColor: Colors.orange,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
''';