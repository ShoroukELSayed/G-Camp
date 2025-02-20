import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/features/onboarding/data/page_view_item_model.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/features/welcom/ui/views/welcom_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewItem extends HookWidget {
  const PageViewItem({
    super.key,
    required this.pageViewItemModel,
    required this.controller,
    required this.pageIndex,
  });
  final PageViewItemModel pageViewItemModel;
  final PageController controller;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(pageViewItemModel.image),
          SizedBox(height: 25),
          Text(pageViewItemModel.title,
              textAlign: TextAlign.center, style: AppStyles.medium34),
          SizedBox(height: 24),
          Text(
            pageViewItemModel.description,
            textAlign: TextAlign.center,
            style: AppStyles.medium16,
          ),
          Gap(20),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
                spacing: 8.0,
                radius: 10.0,
                dotWidth: 10.0,
                dotHeight: 10.0,
                // paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: const Color.fromARGB(120, 158, 158, 158),
                activeDotColor: AppColors.primaryColor),
          ),
          Gap(60),
          CustomElevatedButton(
            colorButton: AppColors.primaryColor,
            colorText: Colors.white,
            name: pageIndex == 2 ? 'START' : 'NEXT',
            onPressed: () {
              pageIndex == 2
                  ? Navigator.pushNamed(context, WelcomView.id)
                  : controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
            },
          ),
        ],
      ),
    );
  }
}
