import 'package:flutter/material.dart';
import 'package:luxira_app/features/auth/ui/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),
    );
  }
}
