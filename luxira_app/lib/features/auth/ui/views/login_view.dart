import 'package:flutter/material.dart';
import 'package:luxira_app/features/auth/ui/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}
