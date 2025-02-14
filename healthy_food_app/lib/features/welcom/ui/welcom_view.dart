import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/features/auth/ui/views/register_view.dart';

import '../../auth/ui/views/login_view.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({super.key});

  static String id = 'Welcom';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.assetsImagesWelcomeImage,
              ),
              Gap(42),
              RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  style: AppStyles.medium18,
                  children: [
                    TextSpan(
                      text: 'Rev',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: 'ivE !',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(9),
              Text(
                'Remind you vegen calender and you can \n customize your own schedule',
                style: AppStyles.medium14,
                textAlign: TextAlign.center,
              ),
              Gap(45),
              CustomElevatedButton(
                colorText: Colors.white,
                name: 'REGISTER',
                colorButton: AppColors.primaryColor,
                onPressed: () => Navigator.pushNamed(context, RegisterView.id),
              ),
              Gap(20),
              CustomElevatedButton(
                colorText: Colors.black,
                name: 'LOGIN',
                colorButton: Colors.white,
                onPressed: () => Navigator.pushNamed(context, LoginView.id),
              ),
              Gap(20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By logging in or restering  , you agree ',
                  style: AppStyles.medium12,
                  children: [
                    TextSpan(
                      text: 'Terms of service ',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 13,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    TextSpan(
                      text: 'Privace Policy',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
