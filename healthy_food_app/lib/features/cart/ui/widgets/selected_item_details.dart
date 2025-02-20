import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class SelectedItemDetails extends StatelessWidget {
  const SelectedItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.assetsImagesGreenSalad,
        ),
        Gap(20),
        Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Green salad',
                  style: AppStyles.medium18.copyWith(
                    color: Colors.black,
                  ),
                ),
                Gap(50),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.add),
                      Text(
                        '1',
                        style: AppStyles.bold19,
                      ),
                      Icon(Icons.remove),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'A Vibrant vegan green salad packed \n with fresh leafy greens, colorful \n veggies,greens \n and protein-rich toppings, tossed \n in a zesty dressing.',
              style: AppStyles.regular14,
            ),
            Text(
              '10.99\$',
              style: AppStyles.medium22.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
