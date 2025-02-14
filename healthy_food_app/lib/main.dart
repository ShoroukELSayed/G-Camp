import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/auth/ui/views/login_view.dart';
import 'package:healthy_food_app/features/auth/ui/views/verification_view.dart';
import 'package:healthy_food_app/features/cart/ui/views/added_items_view.dart';
import 'package:healthy_food_app/features/home/ui/views/home_view.dart';
import 'package:healthy_food_app/features/launch/ui/views/launch_view.dart';
import 'package:healthy_food_app/features/onboarding/ui/views/onborading_view.dart';
import 'package:healthy_food_app/features/auth/ui/views/register_view.dart';
import 'package:healthy_food_app/features/popular%20restarants/ui/views/popular_restarants_view.dart';
import 'package:healthy_food_app/features/splash/ui/views/splash_view.dart';
import 'package:healthy_food_app/features/welcom/ui/welcom_view.dart';
import 'package:healthy_food_app/main_view.dart';

import 'features/payment/ui/views/payment_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const HealthyFoodApp(),
    ),
  );
}

class HealthyFoodApp extends StatelessWidget {
  const HealthyFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnboradingView.id: (context) => OnboradingView(),
        LoginView.id: (context) => LoginView(),
        SplashView.id: (context) => SplashView(),
        RegisterView.id: (context) => RegisterView(),
        WelcomView.id: (context) => WelcomView(),
        VerificationView.id: (context) => VerificationView(),
        LaunchView.id: (context) => LaunchView(),
        HomeView.id: (context) => HomeView(),
        MainView.id: (context) => MainView(),
        PopularRestarants.id: (context) => PopularRestarants(),
        AddedItemsView.id:(context)=>AddedItemsView(),
        PaymentView.id:(context)=>PaymentView(),
      },
      initialRoute: SplashView.id,
    );
  }
} //shared common core !
