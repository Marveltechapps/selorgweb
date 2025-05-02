import 'package:flutter/material.dart';
import 'package:selorgweb/model/produt_detail/product_model.dart';
import 'package:selorgweb/widgets/product_information/product_cart.dart';

class SimilarProductsSection extends StatelessWidget {
  final List<Product> products;

  const SimilarProductsSection({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Text(
            'Similar Product',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: MediaQuery.of(context).size.width < 640 ? 20 : 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        MediaQuery.of(context).size.width < 640
            ? Column(
                children: products
                    .map((product) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: ProductCard(product: product),
                        ))
                    .toList(),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products
                      .map((product) => Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: ProductCard(product: product),
                          ))
                      .toList(),
                ),
              ),
      ],
    );
  }
}