import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/styles.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String weight;
  final double price;
  final double originalPrice;
  final double discount;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.weight,
    required this.price,
    required this.originalPrice,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      decoration: AppStyles.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: Image.network(
                  imageUrl,
                  height: 172,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    '${discount.toStringAsFixed(0)}% off',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppStyles.productTitle),
                const SizedBox(height: 9),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        weight,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF444444),
                        ),
                      ),
                      // Image.network(
                      //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/0da7ecf6cc07813a7f2b9b631e4392aff1aae58d?placeholderIfAbsent=true',
                      //   width: 14,
                      //   height: 14,
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  children: [
                    Text(
                      'Rs ${price.toStringAsFixed(0)}',
                      style: AppStyles.price,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      originalPrice.toStringAsFixed(0),
                      style: AppStyles.discountedPrice,
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  height: 31,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryLight),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(color: AppColors.primary, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
