import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/features/home/ui/widgets/category_item.dart';

class CategorySearch extends StatelessWidget {
  const CategorySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            CategoryItem(
              title: 'Pescatarian',
              image: Assets.assetsImagesPescatarian,
            ),
            CategoryItem(
              title: 'Vegan',
              image: Assets.assetsImagesVegan,
            ),
            CategoryItem(
              title: 'Keto',
              image: Assets.assetsImagesKeto,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            CategoryItem(
              title: 'Vegetarian',
              image: Assets.assetsImagesVegetarian,
            ),
            CategoryItem(
              title: 'Sushi',
              image: Assets.assetsImagesSushi,
            ),
            CategoryItem(
              title: 'Asian',
              image: Assets.assetsImagesAsian,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            CategoryItem(
              title: 'Ramen',
              image: Assets.assetsImagesRamen,
            ),
            CategoryItem(
              title: 'Coffee',
              image: Assets.assetsImagesCoffee,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryItem(
              title: 'Healthy sweets',
              image: Assets.assetsImagesHealthySweets,
            ),
          ],
        )
      ],
    );
  }
}
