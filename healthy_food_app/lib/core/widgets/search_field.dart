import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          Gap(20),
          Text(
          'Search',
          style: AppStyles.medium18,
        ),
        Spacer(),
        Icon(
          Icons.filter_list,
          color: Colors.black,
        ),
        ],
      ),
    );
  }
}