import 'package:flutter/material.dart';

class ProfileInfoForm extends StatefulWidget {
  final Function(String name, String bio) onSubmit;
  final String? initialName;
  final String? initialBio;

  const ProfileInfoForm({
    super.key,
    required this.onSubmit,
    this.initialName,
    this.initialBio,
  });

  @override
  State<ProfileInfoForm> createState() => _ProfileInfoFormState();
}

class _ProfileInfoFormState extends State<ProfileInfoForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _bioController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
    _bioController = TextEditingController(text: widget.initialBio);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Nome'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor insira seu nome';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _bioController,
            decoration: const InputDecoration(labelText: 'Bio'),
            maxLines: 3,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor insira sua bio';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSubmit(_nameController.text, _bioController.text);
              }
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    super.dispose();
  }
}
