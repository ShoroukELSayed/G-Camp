import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
        ZoomIn(
          duration: const Duration(seconds: 2),
          child: Image.asset(Assets.assetsImagesAppLogo),),
    );
  }
}
