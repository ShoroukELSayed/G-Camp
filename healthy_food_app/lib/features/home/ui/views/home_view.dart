import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/features/home/ui/widgets/categories.dart';
import 'package:healthy_food_app/features/home/ui/widgets/popular_item_view.dart';
import 'package:healthy_food_app/features/home/ui/widgets/offer_item_view.dart';
import 'package:healthy_food_app/core/widgets/search_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(40),
            SearchField(),
            Gap(32),
            Categories(),
            Gap(32),
            PopularItemView(),
            OfferItemView(),
          ],
        ),
      ),
    );
  }
}
