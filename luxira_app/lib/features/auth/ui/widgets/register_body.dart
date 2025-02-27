import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:luxira_app/core/utils/app_colors.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/widgets/custom_app_bar.dart';
import 'package:luxira_app/core/widgets/custom_elevated_button.dart';
import 'package:luxira_app/core/widgets/custom_text_form_field.dart';
import 'package:luxira_app/core/helper/form_validator.dart';
import 'package:luxira_app/core/widgets/section_divider.dart';
import 'package:luxira_app/features/auth/ui/views/login_view.dart';

import '../../../../core/utils/app_images.dart';

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

  late String password;

  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: key,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40),
            CustomAppBar(
              title: 'Register',
            ),
            Gap(10),
            Text(
              'Welcome ! please enter your details.',
              style: AppStyles.regular14,
            ),
            Gap(20),
            Text(
              'Name',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Enter your name',
              prefixIcon: Icons.person_outline,
              validator: FormValidator.validateName,
              onChanged: (value) {
                name = value ?? '';
              },
            ),
            Gap(20),
            Text(
              'Email',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Enter your email',
              prefixIcon: Icons.email_outlined,
              validator: FormValidator.validateEmail,
              onChanged: (value) {
                email = value ?? '';
              },
            ),
            Gap(20),
            Text(
              'Password',
              style: AppStyles.regular18,
            ),
            Gap(10),
            CustomTextFormField(
              hint: 'Enter your password',
              prefixIcon: Icons.lock_outline,
              suffixIcon: Icons.visibility_off_outlined,
              validator: FormValidator.validatePassword,
              onChanged: (value) {
                password = value ?? '';
              },
            ),
            Gap(10),
            Text(
              'Must be at least 8 characters',
              style: AppStyles.regular12,
            ),
            Gap(20),
            CustomElevatedButton(
              colorButton: AppColors.primaryColor,
              name: 'Register',
              onPressed: () {
                if (key.currentState!.validate()) {
                  key.currentState!.save();
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
