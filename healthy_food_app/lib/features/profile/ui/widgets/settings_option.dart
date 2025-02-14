import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    super.key,
    required this.icon,
    required this.option,
  });

  final String option;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          option,
          style: AppStyles.medium18.copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
        Spacer(),
        Icon(
          icon,
          size: 20,
          color: icon == Icons.delete? Colors.red : Colors.black,
        )
      ],
    );
  }
}
