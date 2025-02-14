import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/core/helper/form_validator.dart';
import 'package:healthy_food_app/core/services/login_request.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/core/utils/app_images.dart';
import 'package:healthy_food_app/core/utils/app_styles.dart';
import 'package:healthy_food_app/core/widgets/custom_app_bar.dart';
import 'package:healthy_food_app/core/widgets/custom_elevated_button.dart';
import 'package:healthy_food_app/core/widgets/custom_text_form_field.dart';
import 'package:healthy_food_app/core/widgets/section_divider.dart';
import 'package:healthy_food_app/features/auth/ui/views/register_view.dart';

import '../../../../main_view.dart';
import '../../logic/login_cubit.dart';

// ignore: must_be_immutable
class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  late String email;
  late String password;

  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, MainView.id);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'success',
                message: 'Login done Successfully!',
                contentType: ContentType.success,
              ),
            ),
          );
        } else if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message: state.message,
                contentType: ContentType.failure,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: key,
            autovalidateMode: autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(40),
                const CustomAppBar(
                  title: 'Login',
                ),
                const Gap(10),
                Text(
                  'Welcome back! please enter your details.',
                  style: AppStyles.regular14,
                ),
                const Gap(20),
                Text(
                  'Email',
                  style: AppStyles.regular18,
                ),
                const Gap(10),
                CustomTextFormField(
                  hint: 'Enter your email',
                  validator: FormValidator.validateEmail,
                  onChanged: (value) {
                    email = value ?? '';
                  },
                ),
                const Gap(20),
                Text(
                  'Password',
                  style: AppStyles.regular18,
                ),
                const Gap(10),
                CustomTextFormField(
                  hint: 'Enter your password',
                  validator: FormValidator.validatePassword,
                  onChanged: (value) {
                    password = value ?? '';
                  },
                ),
                const Gap(20),
                CustomElevatedButton(
                  colorButton: AppColors.primaryColor,
                  name: state is LoginLoading ? 'Logging in...' : 'Log In',
                  onPressed: state is LoginLoading
                      ? null
                      : () async {
                          if (key.currentState!.validate()) {
                            key.currentState!.save();
                            final loginRequest = LoginRequest(
                              email: email,
                              password: password,
                            );

                            context.read<LoginCubit>().loginUser(loginRequest);
                          } else {
                            setState(() {
                              autovalidateMode = AutovalidateMode.always;
                            });
                          }
                        },
                  colorText: Colors.white,
                ),
                const Gap(20),
                const SectionDivider(text: 'Or Login with'),
                const Gap(20),
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
                      const Gap(10),
                      Text(
                        'Sign in with Google',
                        style: AppStyles.medium16,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: AppStyles.regular14,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterView.id);
                      },
                      child: Text(
                        'Sign up',
                        style: AppStyles.medium14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
