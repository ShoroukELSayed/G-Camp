import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/core/widgets/custom_text_form_field.dart';
import 'package:healthy_food_app/core/helper/form_validator.dart';
import 'package:healthy_food_app/core/widgets/section_divider.dart';
import 'package:healthy_food_app/features/auth/ui/views/login_view.dart';
import 'package:healthy_food_app/features/auth/ui/views/verification_view.dart';


// ignore: must_be_immutable
class RegisterBody extends StatefulWidget {
  const RegisterBody({
    super.key,
  });

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  late String name;

  late String email;

   String? password;
  late String confirmPassword;

  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: key,
        autovalidateMode: autovalidateMode,
        child: ListView(
          children: [
            Gap(40),
            Center(
              child: Image.asset(
                Assets.assetsImagesAppLogo,
                height: 70,
              ),
            ),
            Gap(71),
            
            Text(
              'Name',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Enter your name',
              validator: FormValidator.validateName,
              onChanged: (value) {
                name = value ?? '';
              },
            ),
            Gap(15),
            Text(
              'Email',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Enter your email',
              validator: FormValidator.validateEmail,
              onChanged: (value) {
                email = value ?? '';
              },
            ),
            Gap(15),
            Text(
              'Password',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Enter your password',
              validator: FormValidator.validatePassword,
              onChanged: (value) {
                password = value ?? '';
              },
            ),
            Gap(15),
            Text(
              'Confirm Password',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Confirm password',
              validator:(value) {
                      return FormValidator.confirmPassword(
                          password, value);
                    },
              onChanged: (value) {
                confirmPassword = value ?? '';
              },
            ),
            Gap(20),
            CustomElevatedButton(
              colorButton: AppColors.primaryColor,
              name: 'sign up ',
              onPressed: () {
                if (key.currentState!.validate()) {
                  key.currentState!.save();
                  Navigator.pushNamed(context, VerificationView.id);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
              colorText: Colors.white,
            ),
            Gap(20),
            SectionDivider(text: 'Or Login with'),
            Gap(20),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.assetsImagesGoogleIc),
                  Gap(10),
                  Text(
                    'Sign in with Google',
                    style: AppStyles.medium16,
                  ),
                ],
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppStyles.regular14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginView.id);
                  },
                  child: Text(
                    'Log in',
                    style: AppStyles.medium14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
