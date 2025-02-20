import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/welcom/ui/widgets/welcom_view_body.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({super.key});

  static String id = 'Welcom';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomViewBody(),
    );
  }
}
