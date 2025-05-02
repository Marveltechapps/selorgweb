import 'package:flutter/material.dart';
import 'package:selorgweb/model/produt_detail/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 640 ?
        MediaQuery.of(context).size.width * 0.9 : 245,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width < 640 ? 200 : 245,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: NetworkImage(product.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  decoration: const BoxDecoration(
                    color: Color(0xFF034703),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28),
                    ),
                  ),
                  child: Text(
                    '${product.discountPercentage.toStringAsFixed(0)}% off',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: MediaQuery.of(context).size.width < 640 ? 16 : 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.width < 640 ? 17 : 19,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF202020),
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  product.quantity,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.width < 640 ? 15 : 17,
                    color: const Color(0xFF444444),
                  ),
                ),
                const SizedBox(height: 11),
                Row(
                  children: [
                    Text(
                      'Rs ${product.currentPrice.toStringAsFixed(0)}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: MediaQuery.of(context).size.width < 640 ? 20 : 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      product.originalPrice.toStringAsFixed(0),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: MediaQuery.of(context).size.width < 640 ? 15 : 17,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF777777),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 11),
                Container(
                  width: MediaQuery.of(context).size.width < 640 ? 80 : 91,
                  height: MediaQuery.of(context).size.width < 640 ? 32 : 36,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF427542)),
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: MediaQuery.of(context).size.width < 640 ? 17 : 19,
                        color: const Color(0xFF034703),
                      ),
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