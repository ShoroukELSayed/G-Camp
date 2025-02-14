import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        Text(
          title,
          style: AppStyles.bold25,
        ),
      ],
    );
  }
}
