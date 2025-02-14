import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({
    super.key,
    required this.name,
    required this.image,
    required this.offer,
    required this.detailsOffer,
    required this.color,
    required this.details,
  });

  final String name;
  final String image;
  final String offer;
  final String details;
  final String detailsOffer;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  image,
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
                    color: color,
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
                          offer,
                          style: AppStyles.medium16,
                        ),
                        Gap(10),
                        Text(
                          detailsOffer,
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
               
                Text( name,
                  style: AppStyles.medium18,
                ),
                Spacer(),
                Text( details,
                  style: AppStyles.regular14,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
