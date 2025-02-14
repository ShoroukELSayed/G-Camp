import 'dart:async';

import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/onboarding/ui/views/onborading_view.dart';
import 'package:healthy_food_app/features/splash/ui/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String id = 'SplashView';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, OnboradingView.id);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
