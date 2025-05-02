import 'package:flutter/material.dart';
import '../utils/styles.dart';

class CategoryCard extends StatelessWidget {
  final String backgroundImageUrl;
  final String productImageUrl;
  final String title;

  const CategoryCard({
    super.key,
    required this.backgroundImageUrl,
    required this.productImageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 240,
        minHeight: 299,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 286,
            height: 299,
            decoration: AppStyles.cardDecoration,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    backgroundImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Image.network(
                    productImageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 286,
            constraints: const BoxConstraints(
              minHeight: 90,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 7,
            ),
            decoration: AppStyles.titleCardDecoration,
            child: Center(
              child: Text(
                title,
                style: AppStyles.categoryTitleStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}