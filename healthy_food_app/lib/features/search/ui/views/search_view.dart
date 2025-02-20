import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/widgets/search_field.dart';
import 'package:healthy_food_app/core/helper/offer_item_model.dart';
import 'package:healthy_food_app/features/home/ui/widgets/offer_item.dart';
import 'package:healthy_food_app/features/search/ui/widgets/category_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const String id = 'SearchView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          children: [
            Gap(10),
            SearchField(),
            CategorySearch(),
            OfferItem(
              offerItemModel: OfferItemModel(
                name: 'Sea Stories',
                image: Assets.assetsImagesSeaStories,
                offer: '   Offer   ',
                detailsOffer: 'Get 40%',
                color: Color(0xffFFBDA7).withAlpha(200),
                details: '55 Min',
              ),
            ),
            OfferItem(
              offerItemModel: OfferItemModel(
                name: 'Veganeno',
                image: Assets.assetsImagesVeganeno,
                offer: '   Offer   ',
                detailsOffer: 'Get 40%',
                color: Color(0xffFFBDA7).withAlpha(200),
                details: '20 Min',
              ),
            ),

          ],
        ),
      ),
    );
  }
}
