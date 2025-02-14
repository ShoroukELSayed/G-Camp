import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/services/shared_pref_helper.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsImagesProfileImage,
        ),
        Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              SharedPrefHelper.getString('name'),
              style: AppStyles.bold19.copyWith(color: Colors.black),
            ),
            Text(
              SharedPrefHelper.getString('phone'),
              style: AppStyles.regular16,
            )
          ],
        )
      ],
    );
  }
}
