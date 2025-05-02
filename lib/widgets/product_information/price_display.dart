import 'package:flutter/material.dart';
import 'package:selorgweb/widgets/product_information/constants/styles.dart';

class PriceDisplay extends StatelessWidget {
  final int price;
  final int? strikethroughPrice;

  const PriceDisplay({
    super.key,
    required this.price,
    this.strikethroughPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.currency_rupee, size: 24),
        Text(
          price.toString(),
          style: AppStyles.price,
        ),
        if (strikethroughPrice != null) ...[
          const SizedBox(width: 8),
          Text(
            '₹$strikethroughPrice',
            style: AppStyles.strikethrough,
          ),
        ],
      ],
    );
  }
}