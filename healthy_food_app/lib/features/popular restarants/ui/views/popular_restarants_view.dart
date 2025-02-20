import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/core/widgets/search_field.dart';
import 'package:healthy_food_app/core/helper/offer_item_model.dart';
import 'package:healthy_food_app/features/home/ui/widgets/offer_item.dart';

class PopularRestarants extends StatelessWidget {
  const PopularRestarants({super.key});

  static String id = 'PopularRestarants';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Restarants',
          style: AppStyles.medium24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SearchField(),
            Gap(20),
            OfferItem(
              offerItemModel: OfferItemModel(
                name: 'lean & Green',
                image: Assets.assetsImagesLeanAndGreen,
                offer: '    Offer    ',
                detailsOffer: 'Get 40%',
                color: Color(0xffFFBDA7).withAlpha(150),
                details: '55 Min',
              ),
            ),
            Gap(20),
            OfferItem(
             offerItemModel:  OfferItemModel(
                name: 'Boogie Veggie',
                image: Assets.assetsImagesBoogieVeggie,
                offer: '    Offer    ',
                detailsOffer: 'Get 40%',
                color: Color(0xffFFBDA7).withAlpha(220),
                details: '20 Min',
              ),
            ),
            Gap(20),
            OfferItem(
               offerItemModel: OfferItemModel(
                name: 'Veganeno',
                image: Assets.assetsImagesVeganeno,
                offer: '    Offer    ',
                detailsOffer: 'Get 40%',
                color: Color(0xffFFBDA7).withAlpha(150),
                details: '55 Min',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
