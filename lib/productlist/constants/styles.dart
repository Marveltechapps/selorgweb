import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: 'Poppins',
  );

  static const TextStyle productTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF202020),
    fontFamily: 'Poppins',
  );

  static const TextStyle price = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: 'Poppins',
  );

  static const TextStyle discountedPrice = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xFF777777),
    decoration: TextDecoration.lineThrough,
    fontFamily: 'Poppins',
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(24),
    boxShadow: [
      BoxShadow(
        color: Colors.black,
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
  );
}