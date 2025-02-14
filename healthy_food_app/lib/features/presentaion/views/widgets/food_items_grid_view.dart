import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/presentaion/view_model/food_model.dart';

import 'food_item.dart';

class FoodItemsGridView extends StatelessWidget {
  const FoodItemsGridView({
    super.key,
    required this.foodModels,
  });
  final List<FoodModel> foodModels;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2),
      itemCount: foodModels.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodItem(
          foodModel: foodModels[index],
        );
      },
    );
  }
}
