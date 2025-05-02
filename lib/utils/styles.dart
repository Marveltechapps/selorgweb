import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF034703);
  static const Color primaryBorder = Color(0xFF427542);
  static const Color textPrimary = Color(0xFF202020);
  static const Color textSecondary = Color(0xFF444444);
  static const Color textPrice = Color(0xFF000000);
  static const Color textDiscount = Color(0xFF777777);
}

class AppTextStyles {
  static const String fontFamily = 'Poppins';

  static const TextStyle heading = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle productTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 19,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle productWeight = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    color: AppColors.textSecondary,
  );

  static const TextStyle price = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrice,
  );

  static const TextStyle discountPrice = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.textDiscount,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle discountBadge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 19,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle addButton = TextStyle(
    fontFamily: fontFamily,
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
}
