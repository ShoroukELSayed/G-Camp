import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/features/home/ui/widgets/category_item.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = 'All';
            });
          },
          child: CategoryItem(
            title: 'All',
            isSelected: selectedCategory == 'All',
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = 'Keto';
            });
          },
          child: CategoryItem(
            title: 'Keto',
            isSelected: selectedCategory == 'Keto',
            image: Assets.assetsImagesKeto,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = 'Vegan';
            });
          },
          child: CategoryItem(
            title: 'Vegan',
            isSelected: selectedCategory == 'Vegan',
            image: Assets.assetsImagesVegan,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
