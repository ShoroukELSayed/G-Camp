import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_food_app/core/services/api_services.dart';
import 'package:healthy_food_app/features/auth/logic/login_cubit.dart';
import 'package:healthy_food_app/features/auth/logic/register_cubit.dart';
import 'package:healthy_food_app/features/auth/ui/views/login_view.dart';
import 'package:healthy_food_app/features/auth/ui/views/register_view.dart';
import 'package:healthy_food_app/features/auth/ui/views/verification_view.dart';
import 'package:healthy_food_app/features/home/ui/views/home_view.dart';
import 'package:healthy_food_app/features/launch/ui/views/launch_view.dart';
import 'package:healthy_food_app/features/onboarding/ui/views/onborading_view.dart';
import 'package:healthy_food_app/features/popular%20restarants/ui/views/popular_restarants_view.dart';
import 'package:healthy_food_app/features/presentaion/view_model/food_cubit/food_cubit.dart';
import 'package:healthy_food_app/features/splash/ui/views/splash_view.dart';
import 'package:healthy_food_app/features/welcom/ui/welcom_view.dart';
import 'package:healthy_food_app/main_view.dart';

import 'core/services/shared_pref_helper.dart';
import 'features/cart/ui/views/added_items_view.dart';
import 'features/payment/ui/views/payment_view.dart';
import 'features/presentaion/views/all_foods_view.dart';

void main() {
  SharedPrefHelper().inti();
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
        LoginView.id: (context) => BlocProvider(
              create: (context) => LoginCubit(
                ApiServices(),
              ),
              child: LoginView(),
            ),
        SplashView.id: (context) => SplashView(),
        RegisterView.id: (context) => BlocProvider(
              create: (context) => RegisterCubit(
                ApiServices(),
              ),
              child: RegisterView(),
            ),
        WelcomView.id: (context) => WelcomView(),
        VerificationView.id: (context) => VerificationView(),
        LaunchView.id: (context) => LaunchView(),
        HomeView.id: (context) => HomeView(),
        MainView.id: (context) => MainView(),
        PopularRestarants.id: (context) => PopularRestarants(),
        AllFoodsView.id: (context) => BlocProvider(
              create: (context) => FoodCubit()..fetchFoodItems(),
              child: AllFoodsView(),
            ),
        AddedItemsView.id: (context) => AddedItemsView(),
        PaymentView.id: (context) => PaymentView(),
      },
      initialRoute: SplashView.id,
    );
  }
} //shared common core !
