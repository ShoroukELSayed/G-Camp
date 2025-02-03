import 'package:flutter/material.dart';
import 'package:luxira_app/core/utils/auth_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBody(
        isLogin: false,
      ),
    );
  }
}