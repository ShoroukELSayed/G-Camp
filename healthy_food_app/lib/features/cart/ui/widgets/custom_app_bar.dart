import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.assetsImagesCartImage,
          ),
        ),
      ),
    );
  }
}
