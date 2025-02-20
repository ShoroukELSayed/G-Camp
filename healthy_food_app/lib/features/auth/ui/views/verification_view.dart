import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/auth/ui/widgets/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});
  static String id = 'ForgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerificationViewBody(),
    );
  }
}
