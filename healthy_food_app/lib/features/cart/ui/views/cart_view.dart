import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/custom_app_bar.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/ingredients.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const String id = 'CartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Green salad',
                      style: AppStyles.medium22.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: AppColors.primaryColor,
                    ),
                    Text(
                      '4.5',
                      style: AppStyles.regular12,
                    )
                  ],
                ),
                Text(
                  '160 g',
                  style: AppStyles.regular16.copyWith(
                    color: Colors.grey,
                  ),
                ),
                Gap(15),
                Text(
                  '10.99\$',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Gap(20),
                Text(
                  'A Vibrant vegan green salad packed with fresh leafy greens, colorful veggies,greens and protein-rich toppings, tossed in a zesty dressing.',
                  style: AppStyles.regular14,
                ),
                Gap(20),
                Text(
                  'Ingredients',
                  style: AppStyles.medium18,
                ),
                Ingredients(),
              ],
            ),
            Positioned(
              bottom: 7,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Text(
                    'Add to cart',
                    style: AppStyles.medium24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
