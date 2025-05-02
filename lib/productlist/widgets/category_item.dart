import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.title,
    required this.imageUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.successBackground : Colors.white,
        border: isSelected
            ? Border(
                left: BorderSide(
                  color: AppColors.primary,
                  width: 3,
                ),
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Row(
          children: [
            Image.network(
              imageUrl,
              width: 64,
              height: 64,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF222222),
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}