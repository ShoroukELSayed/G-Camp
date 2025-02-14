import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/features/home/ui/widgets/offer_item.dart';
import 'package:healthy_food_app/features/home/ui/widgets/restaurants_types.dart';

class OfferItemView extends StatelessWidget {
  OfferItemView({super.key});

  final List<SizedBox> promotionsItems = [
    SizedBox(
      height: 200,
      width: 270,
      child: OfferItem(
        name: 'Beef & Cheese ',
        details: '    20 min 200 Kcal',
        image: Assets.assetsImagesBeefAndCheese,
        color: Color(0xffE4F8A3),
        offer: 'Get 20% off your \n first vagen order!',
        detailsOffer: 'use code  VEGAN20 \n at checkout ',
      ),
    ),
    SizedBox(
      height: 200,
      width: 270,
      child: OfferItem(
        name: 'Grill Palace ',
        details: '    20 min 200 Kcal',
        image: Assets.assetsImagesGrillPalace,
        color: Color(0xffFFC1C0).withAlpha(200),
        offer: 'Get 10% off your \n first vagen order!',
        detailsOffer: 'use code  VEGAN20 \n at checkout ',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RestaurantsTypes(
        title: 'Promotions',
        items: promotionsItems,
      ),
    );
  }
}
