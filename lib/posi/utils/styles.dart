import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 44,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static const TextStyle categoryTitleStyle = TextStyle(
    fontSize: 30,
    fontFamily: 'Poppins',
    color: Color(0xFF222222),
    fontWeight: FontWeight.w500,
    height: 1.23,
    letterSpacing: -0.75,
  );

  static final BoxDecoration cardDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black,
        blurRadius: 10,
        offset: const Offset(0, 0),
      ),
    ],
  );

  static final BoxDecoration titleCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );
}