import 'package:flutter/material.dart';
import '../molecules/profile_info_form.dart';

class ProfilePageBody extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController bioController;

  const ProfilePageBody({
    super.key,
    required this.usernameController,
    required this.emailController,
    required this.bioController,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileInfoForm(
      usernameController: usernameController,
      emailController: emailController,
      bioController: bioController,
      onSave: () {},
    );
  }
}
