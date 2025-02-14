import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/features/onboarding/ui/widgets/page_view_item.dart';

import '../../data/page_view_item_model.dart';

class OnboradingView extends HookWidget {
  const OnboradingView({super.key});
  static const String id = 'OnboardingView';
  
  @override
  Widget build(BuildContext context) {
    final  controller = usePageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                PageViewItem(
                  pageViewItemModel: PageViewItemModel(
                    image: Assets.assetsImagesOnBoarding1,
                    title: 'Fresh & Nutritious',
                    description: 'Discover the ultimate convenience of healthy eating with RevivE',
                  ),
                  controller: controller,
                  pageIndex: 0,
                ),
                PageViewItem(
                  pageViewItemModel: PageViewItemModel(
                    image: Assets.assetsImagesOnBoarding2,
                    title: 'Personalization',
                    description: 'Vegan, Vegetarian, keto, or just healthy-conscious? We’ve got your perfect meal!',
                  ),
                  controller: controller,
                  pageIndex: 1,
                ),
                PageViewItem(
                  pageViewItemModel: PageViewItemModel(
                    image: Assets.assetsImagesOnBoarding3,
                    title: 'Effortless Delivery',
                    description: 'Track deliveries live and enjoy eco \n packaging for fresh, tasty meals!',
                  ),
                  controller: controller,
                  pageIndex: 2,
                ),
               
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
