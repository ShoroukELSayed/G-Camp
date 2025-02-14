import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Gap(20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: AppStyles.medium18,
                ),
                TextSpan(
                  text: '    20 min 200 Kcal',
                  style: AppStyles.regular14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
