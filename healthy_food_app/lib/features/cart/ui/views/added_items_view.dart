import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/comment_field.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/selected_item_details.dart';
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
            SelectedItemDetails(),
            Gap(10),
            Text('Add a comment', style: AppStyles.medium24),
            Gap(10),
            CommentField(),
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
