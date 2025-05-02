import 'package:flutter/material.dart';
import 'package:selorgweb/utils/styles.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String weight;
  final double price;
  final double originalPrice;
  final double discount;
  final VoidCallback onAddPressed;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.weight,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.onAddPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 245,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    '${discount.toStringAsFixed(0)}% off',
                    style: AppTextStyles.discountBadge,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(title, style: AppTextStyles.productTitle),
                Text(weight, style: AppTextStyles.productWeight),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'Rs ${price.toStringAsFixed(0)}',
                      style: AppTextStyles.price,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      originalPrice.toStringAsFixed(0),
                      style: AppTextStyles.discountPrice,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Container(
              width: 91,
              height: 36,
              margin: const EdgeInsets.only(bottom: 18),
              child: OutlinedButton(
                onPressed: onAddPressed,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: AppColors.primaryBorder,
                    width: 1.4,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
                ),
                child: Text('Add', style: AppTextStyles.addButton),
              ),
            ),
          ),
        ],
      ),
    );
  }
}