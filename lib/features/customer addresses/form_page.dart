import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomerAddressesFormPage extends StatefulWidget {
  final Map<String, dynamic>? initialData;
  const CustomerAddressesFormPage({super.key, this.initialData});

  @override
  State<CustomerAddressesFormPage> createState() => _CustomerAddressesFormPageState();
}

class _CustomerAddressesFormPageState extends State<CustomerAddressesFormPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialData == null ? 'Create CustomerAddresses' : 'Edit CustomerAddresses'),
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
