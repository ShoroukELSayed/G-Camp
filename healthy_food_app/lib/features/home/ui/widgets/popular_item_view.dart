import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/features/home/ui/widgets/popular_item.dart';
import 'package:healthy_food_app/features/home/ui/widgets/restaurants_types.dart';
import 'package:healthy_food_app/features/popular%20restarants/ui/views/popular_restarants_view.dart';

class PopularItemView extends StatelessWidget {
  PopularItemView({super.key});

  final List<PopularItem> popularItems = [
    PopularItem(
      name: 'Rooted Kitchen ',
      image: Assets.assetsImagesRootedKitchen,
    ),
    PopularItem(
      name: 'Fruit Garden ',
      image: Assets.assetsImagesFruitGarden,
    ),
    PopularItem(
      name: 'Pure Bites ',
      image: Assets.assetsImagesPureBites,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PopularRestarants.id);
        },
        child: RestaurantsTypes(
          title: 'Popular Restaurants',
          items: popularItems,
        ),
      ),
    );
  }
}
