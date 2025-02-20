import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/helper/offer_item_model.dart';
import 'package:healthy_food_app/features/home/ui/widgets/offer_item.dart';
import 'package:healthy_food_app/features/home/ui/widgets/restaurants_types.dart';

class OfferItemView extends StatelessWidget {
  OfferItemView({super.key});

  final List<SizedBox> promotionsItems = [
    SizedBox(
      height: 200,
      width: 270,
      child: OfferItem(
         offerItemModel: OfferItemModel(
                name: 'Beef & Cheese ',
                image: Assets.assetsImagesBeefAndCheese,
                offer: 'Get 20% off your \n first vagen order!',
                detailsOffer: 'use code  VEGAN20 \n at checkout ',
                color:Color(0xffE4F8A3),
                details: '    20 min 200 Kcal',
              ),
      ),
    ),
    SizedBox(
      height: 200,
      width: 270,
      child: OfferItem(
        offerItemModel: OfferItemModel(
                name: 'Grill Palace ',
                image:  Assets.assetsImagesGrillPalace,
                offer: 'Get 10% off your \n first vagen order!',
                detailsOffer: 'use code  VEGAN20 \n at checkout ',
                color: Color(0xffFFC1C0).withAlpha(200),
                details: '    20 min 200 Kcal',
              ),
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
