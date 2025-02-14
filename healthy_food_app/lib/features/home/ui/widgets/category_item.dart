import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    this.isSelected = false,
    this.image,
  });

  final String title;
  final bool isSelected;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff97B142) : Color(0xffE0E0E0),
        borderRadius: BorderRadius.circular(50),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Gap(5),
          image != null ? Image.asset(image!) : const Gap(20),
          Gap(2),
          Text(
            title,
            style: AppStyles.medium18,
          ),
          image == null ? Gap(20): Gap(5),
        ],
      ),
    );
  }
}
