import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/helper/offer_item_model.dart';
import 'package:healthy_food_app/features/presentaion/views/all_foods_view.dart';

import '../../../../core/utils/app_styles.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({
    super.key, required this.offerItemModel,
  });

  final OfferItemModel offerItemModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AllFoodsView.id);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    offerItemModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: offerItemModel.color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: (16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            offerItemModel.offer,
                            style: AppStyles.medium16,
                          ),
                          Gap(10),
                          Text(
                            offerItemModel.detailsOffer,
                            style: AppStyles.medium12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(20),
            Row(
              children: [
                Text(
                  offerItemModel.name,
                  style: AppStyles.medium18,
                ),
                Spacer(),
                Text(
                  offerItemModel.details,
                  style: AppStyles.regular14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
