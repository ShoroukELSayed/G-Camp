import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class IngredientsItem extends StatelessWidget {
  const IngredientsItem({
    super.key,
    required this.title, required this.image,
  });

  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(
            image,
          ),
        ),
        Gap(5),
        Text(
          title,
          style: AppStyles.regular16,
        )
      ],
    );
  }
}
