import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class RestaurantsTypes extends StatelessWidget {
  const RestaurantsTypes({
    super.key,
    required this.items,
    required this.title,
  });

  final List<dynamic> items;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: AppStyles.medium24,
            ),
            Spacer(),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Gap(19),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => Gap(16),
            itemCount: items.length,
            itemBuilder: (context, index) => items[index],
          ),
        ),
      ],
    );
  }
}
