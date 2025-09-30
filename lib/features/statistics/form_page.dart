import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class StatisticsFormPage extends StatefulWidget {
  const StatisticsFormPage({super.key});

  @override
  State<StatisticsFormPage> createState() => _StatisticsFormPageState();
}

class _StatisticsFormPageState extends State<StatisticsFormPage> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          FormBuilderTextField(
            name: 'name',
            decoration: const InputDecoration(labelText: 'Name'),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(2),
            ]),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () {
              if (formKey.currentState?.saveAndValidate() ?? false) {
                final value = formKey.currentState!.value;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Submit: $value')));
              }
            },
            child: const Text('Save'),
          )
        ],
      ),
    );
  }
}
