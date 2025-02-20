import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/widgets/custom_app_bar.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/features/Launch/ui/views/launch_view.dart';
import 'package:healthy_food_app/features/auth/ui/widgets/pin_code_text_field_widget.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(60),
          FlipInY(
            child: Center(
              child: Image.asset(
                Assets.assetsImagesAppLogo,
                height: 70,
              ),
            ),
          ),
          Gap(70),
          CustomAppBar(
            title: 'Verification',
          ),
          Gap(11),
          Text(
            'Enter the OTP code from the phone we just sent you.',
            style: TextStyle(
              color: const Color(0xff646363),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(41),
          PinCodeTextFieldWidget(),
          Gap(30),
          RichText(
            text: TextSpan(
              text: 'Don’t receive OTP code? ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: 'Resend',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Gap(85),
          CustomElevatedButton(
            colorButton: AppColors.primaryColor,
            name: 'Submit',
            onPressed: () {
              Navigator.pushNamed(context, LaunchView.id);
            },
            colorText : Colors.white,
          )
        ],
      ),
    );
  }
}
