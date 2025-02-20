import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/features/profile/data/settings_option_model.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    super.key, required this.settingsOptionModel,
  });

  final SettingsOptionModel settingsOptionModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          settingsOptionModel.option,
          style: AppStyles.medium18.copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: settingsOptionModel.onTap,
          icon: Icon(
            settingsOptionModel.icon,
            size: 20,
            color: settingsOptionModel.icon == Icons.delete ? Colors.red : Colors.black,
          ), 
        )
      ],
    );
  }
}
