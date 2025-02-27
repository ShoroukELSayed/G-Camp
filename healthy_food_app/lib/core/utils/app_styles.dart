import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';

class AppStyles {
  static const _regular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

  static const _semiBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static const _medium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static const _bold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );

  static final TextStyle regular12 = _regular.copyWith(
    fontSize: 12,
    color: const Color(0xFF949D9E),
  );
  static final TextStyle regular13 = _regular.copyWith(
    fontSize: 13,
    color: const Color(0xFF949D9E),
  );
  static final TextStyle regular14 = _regular.copyWith(
    fontSize: 14,
    color: const Color(0xFF949D9E),
  );
  static final TextStyle regular16 = _regular.copyWith(
    fontSize: 16,
    color: const Color(0xFF646363),
  );
  static final TextStyle regular18 = _regular.copyWith(
    fontSize: 16,
    color: AppColors.secondaryColor,
  );
  static final TextStyle regular32 = _regular.copyWith(
    fontSize: 32,
    color: Colors.white,
  );

  static final TextStyle semiBold11 = _semiBold.copyWith(
    fontSize: 11,
    color: AppColors.secondaryColor,
  );
  static final TextStyle semiBold12 = _semiBold.copyWith(
    fontSize: 12,
    color: AppColors.secondaryColor,
  );
  static final TextStyle semiBold13 = _semiBold.copyWith(
    fontSize: 13,
    color: const Color(0xff0c0d0d),
  );
  static final TextStyle semiBold15 = _semiBold.copyWith(
    fontSize: 15,
    color: const Color(0XFF949D9E),
  );
  static final TextStyle semiBold16 = _semiBold.copyWith(
    fontSize: 16,
    color: AppColors.secondaryColor,
  );

  static final TextStyle medium28 = _medium.copyWith(
    fontSize: 28,
    color: Colors.black,
  );
  static final TextStyle medium14 = _medium.copyWith(
    fontSize: 14,
    color: Colors.black,
  );
  static final TextStyle medium12 = _medium.copyWith(
    fontSize: 12,
    color: const Color.fromARGB(255, 70, 69, 69),
  );
  static final TextStyle medium16 = _medium.copyWith(
    fontSize: 16,
    color: Colors.black,
  );
  static final TextStyle medium18 = _medium.copyWith(
    fontSize: 18,
    color: Colors.black,
  );
  static final TextStyle medium22 = _medium.copyWith(
    fontSize: 22,
    color: Colors.white,
  );
  static final TextStyle medium24 = _medium.copyWith(
    fontSize: 24,
    color: Colors.black,
  );
  static final TextStyle medium34 = _medium.copyWith(
    fontSize: 34,
    color: AppColors.secondaryColor,
  );

  static final TextStyle bold13 = _bold.copyWith(
    fontSize: 13,
    color: const Color(0xff949d9e),
  );
  static final TextStyle bold16 = _bold.copyWith(
    fontSize: 16,
    color: const Color(0xffffffff),
  );
  static final TextStyle bold19 = _bold.copyWith(
    fontSize: 19,
    color: const Color(0xff0c0d0d),
  );
  // 20
  static final TextStyle bold20 = _bold.copyWith(
    fontSize: 20,
    color: AppColors.secondaryColor,
  );
  static final TextStyle bold25 = _bold.copyWith(
    fontSize: 25,
    color: const Color(0xff0c0d0d),
  );
}
