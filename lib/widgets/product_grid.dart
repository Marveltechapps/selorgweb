import 'package:flutter/material.dart';
import 'package:selorgweb/utils/styles.dart';
import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  final String title;
  const ProductGrid({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = _getPadding(screenWidth);

    return Container(
      constraints: const BoxConstraints(maxWidth: 1292),
      margin: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.heading),
          const SizedBox(height: 26),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 17,
                runSpacing: 17,
                alignment:
                    screenWidth <= 991
                        ? WrapAlignment.center
                        : WrapAlignment.start,
                children: List.generate(
                  4,
                  (index) => ProductCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/36d5013c3188bd37a6f0e619e6fab1febc4dfd76?placeholderIfAbsent=true',
                    title: 'Orange',
                    weight: '1kg',
                    price: 75,
                    originalPrice: 150,
                    discount: 20,
                    onAddPressed: () {
                      // Handle add button press
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  double _getPadding(double width) {
    if (width <= 640) return 16;
    if (width <= 991) return 24;
    return 32;
  }
}
