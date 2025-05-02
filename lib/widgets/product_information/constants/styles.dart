import 'package:flutter/material.dart';
import 'colors.dart';

class AppStyles {
  static TextStyle get title => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: AppColors.textPrimary,
  );

  static TextStyle get subtitle => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: AppColors.textSecondary,
  );

  static TextStyle get price => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 29,
    color: Colors.black,
  );

  static TextStyle get strikethrough => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: AppColors.strikethroughColor,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle get addButton => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: AppColors.primary,
  );
}