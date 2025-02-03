import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:luxira_app/core/utils/app_colors.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/utils/custom_elevated_button.dart';
import 'package:luxira_app/core/utils/custom_text_form_field.dart';
import 'package:luxira_app/core/utils/form_validator.dart';
import 'package:luxira_app/core/utils/section_divider.dart';
import 'package:luxira_app/features/login/ui/views/login_view.dart';
import 'package:luxira_app/features/register/ui/views/register_view.dart';

import 'app_images.dart';

// ignore: must_be_immutable
class AuthBody extends StatefulWidget {
  const AuthBody({
    super.key,
    required this.isLogin,
  });
  final bool isLogin;

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
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
            Row(
              children: [
                if (!widget.isLogin)
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                Text(
                  widget.isLogin ? 'Login' : 'Register',
                  style: AppStyles.bold23,
                ),
              ],
            ),
            Gap(10),
            Text(
              widget.isLogin
                  ? 'Welcome back! please enter your details.'
                  : 'Welcome ! please enter your details.',
              style: AppStyles.regular14,
            ),
            Gap(20),
            if (!widget.isLogin)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
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
            Row(
              children: [
                Checkbox(
                  checkColor: Color(0xf0000000),
                  value: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onChanged: (value) {},
                ),
                Text(
                  'Remember this device',
                  style: AppStyles.regular12,
                ),
                const Spacer(),
                Text(
                  'Forgot Password?',
                  style: AppStyles.medium13,
                ),
              ],
            ),
            Gap(20),
            CustomElevatedButton(
              colorButton: AppColors.primaryColor,
              name: widget.isLogin ? 'Log In':'Register' ,
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
                  widget.isLogin
                      ? 'Don’t have an account?'
                      : 'Already have an account?',
                  style: AppStyles.regular14,
                ),
                GestureDetector(
                  onTap: () {
                    widget.isLogin
                        ? Navigator.pushNamed(context, RegisterView.id)
                        : Navigator.pushNamed(context, LoginView.id);
                  },
                  child: Text(
                    widget.isLogin ? 'Sign up' : 'Log in',
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
