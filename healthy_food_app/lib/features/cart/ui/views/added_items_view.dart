import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/features/payment/ui/views/payment_view.dart';

class AddedItemsView extends StatelessWidget {
  const AddedItemsView({super.key});

  static String id = 'AddedItemsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Added Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Green Choice',
              style: AppStyles.medium22.copyWith(
                color: Colors.black,
              ),
            ),
            Gap(30),
            Row(
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
            ),
            Gap(10),
            Text('Add a comment', style: AppStyles.medium24),
            Gap(10),
            Container(
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'write here',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Gap(20),
            Row(
              children: [
                Text(
                  'Total',
                  style: AppStyles.medium22.copyWith(
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  '11.60\$',
                  style: AppStyles.medium22.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Gap(40),
            CustomElevatedButton(
                colorButton: AppColors.primaryColor,
                name: 'Go to Payment',
                onPressed: () {
                  Navigator.pushNamed(context, PaymentView.id);
                },
                colorText: Colors.white),
          ],
        ),
      ),
    );
  }
}
