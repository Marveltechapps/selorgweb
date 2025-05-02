import 'package:flutter/material.dart';
import 'package:selorgweb/widgets/product_information/constants/colors.dart';
import 'package:selorgweb/widgets/product_information/constants/styles.dart';
import 'price_display.dart';
import 'quantity_counter.dart';

class TomatoCountryWidget extends StatefulWidget {
  const TomatoCountryWidget({super.key});

  @override
  State<TomatoCountryWidget> createState() => _TomatoCountryWidgetState();
}

class _TomatoCountryWidgetState extends State<TomatoCountryWidget> {
  int _selectedQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final isTablet = maxWidth <= 991;
        final isMobile = maxWidth <= 640;

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 10 : isTablet ? 15 : 20,
            vertical: isMobile ? 10 : isTablet ? 15 : 20,
          ),
          constraints: const BoxConstraints(maxWidth: 636),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tomato Country (Nattu Thakkali)',
                style: AppStyles.title.copyWith(
                  fontSize: isMobile ? 24 : isTablet ? 28 : 32,
                ),
              ),
              const SizedBox(height: 20),
              _buildVariantCard(
                '2 pcs (Approx.250g - 350g)',
                75,
                85,
                true,
              ),
              const SizedBox(height: 10),
              _buildVariantCard(
                '500 g',
                350,
                400,
                false,
              ),
              const SizedBox(height: 10),
              _buildVariantCard(
                '1kg',
                750,
                800,
                false,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildVariantCard(
    String title,
    int price,
    int originalPrice,
    bool isSelected,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        border: Border.all(
          color: AppColors.borderColor,
          width: 1.7,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyles.subtitle,
              ),
              const SizedBox(height: 5),
              PriceDisplay(
                price: price,
                strikethroughPrice: originalPrice,
              ),
            ],
          ),
          if (isSelected)
            QuantityCounter(
              quantity: _selectedQuantity,
              onChanged: (value) {
                setState(() {
                  _selectedQuantity = value.clamp(1, 99);
                });
              },
            )
          else
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primary, width: 1.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(34),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
              ),
              child: Text(
                'Add',
                style: AppStyles.addButton,
              ),
            ),
        ],
      ),
    );
  }
}