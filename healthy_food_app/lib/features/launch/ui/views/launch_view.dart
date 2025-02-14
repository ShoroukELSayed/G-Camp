import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/main_view.dart';

class LaunchView extends StatefulWidget {
  const LaunchView({super.key});
  static String id = 'LaunchView';
  @override
  State<LaunchView> createState() => _LaunchViewState();
}

class _LaunchViewState extends State<LaunchView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, MainView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            Gap(130),
            Image.asset(
              Assets.assetsImagesLaunchView,
              height: 250,
              width: 250,
            ),
            Gap(73),
            Text(
              'Welcome \n Lets',
              style: AppStyles.regular32,
              textAlign: TextAlign.center,
            ),
            Text(
              'RevivE',
              style: AppStyles.regular32.copyWith(
                color: AppColors.secondaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
