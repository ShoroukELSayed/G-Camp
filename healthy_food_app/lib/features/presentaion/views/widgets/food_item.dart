import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:shimmer/shimmer.dart';

import '../../view_model/food_model.dart';
import 'favourite_Button.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    super.key,
    required this.foodModel,
  });
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              placeholder: (context, url) {
                return const ShimmerSkeleton(
                  width: 200,
                  height: 250,
                );
              },
              imageUrl: foodModel.image,
              fit: BoxFit.cover,
              height: 250,
              width: 200,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color(0xffffffff),
                    const Color(0xffffffff).withOpacity(.0),
                    const Color(0xffffffff).withOpacity(.0),
                  ]),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            bottom: 2,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      foodModel.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.regular13.copyWith(
                          height: 1,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: FavouriteButton(),
          )
        ],
      ),
    );
  }
}

class ShimmerSkeleton extends StatelessWidget {
  const ShimmerSkeleton({
    super.key,
    required this.width,
    this.height = 10,
  });
  final double width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.black),
      ),
    );
  }
}
