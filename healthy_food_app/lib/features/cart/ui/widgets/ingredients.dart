import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/ingredients_item.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Gap(10),
        Row(
          children: [
            IngredientsItem(
              image: Assets.assetsImagesLettuce,
              title: 'lettuce',
            ),
            Spacer(),
            IngredientsItem(
              image: Assets.assetsImagesTomatoes,
              title: 'tomatoes',
            ),
            Spacer(),
            IngredientsItem(
              image: Assets.assetsImagesCucumber,
              title: 'cucumber',
            ),
          ],
        ),
        Row(
          children: [
            IngredientsItem(
              image: Assets.assetsImagesBeet,
              title: 'beet',
            ),
            Spacer(),
            IngredientsItem(
              image: Assets.assetsImagesParsley,
              title: 'parsley',
            ),
            Spacer(),
            IngredientsItem(
              image: Assets.assetsImagesCorn,
              title: 'corn',
            ),
          ],
        ),
      ],
    );
  }
}
