import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/widgets/custom_app_bar.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/features/Launch/ui/views/launch_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});
  static String id = 'ForgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(60),
            Center(
              child: Image.asset(
                Assets.assetsImagesAppLogo,
                height: 70,
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
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: true,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(16),
                fieldHeight: 55,
                fieldWidth: 80,
                activeFillColor: Colors.white,
                activeColor: Colors.grey,
                inactiveFillColor: Colors.grey,
                inactiveColor: Colors.white,
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.white,
              enableActiveFill: true,
              // errorAnimationController: errorController,
              // controller: textEditingController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                // print(value);
                // setState(() {
                //   currentText = value;
                // });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
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
      ),
    );
  }
}
