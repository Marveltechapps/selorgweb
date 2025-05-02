import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF666666).withOpacity(0.25),
            blurRadius: 6,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildCartItem(
            image:
                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/504e40f705e47b5bc342223346b459397e4e7efa?placeholderIfAbsent=true',
            name: 'Orange(Organic)',
            weight: '500g',
            price: '₹37',
            originalPrice: '₹45',
          ),
          const SizedBox(height: 24),
          _buildCartItem(
            image:
                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/56b733b678ffce3598605ad3de10990a3b4cbf62?placeholderIfAbsent=true',
            name: 'Orange(Organic)',
            weight: '1 kg',
            price: '₹87',
            originalPrice: '₹95',
          ),
        ],
      ),
    );
  }

  Widget _buildCartItem({
    required String image,
    required String name,
    required String weight,
    required String price,
    required String originalPrice,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.network(image, width: 96),
            const SizedBox(width: 28),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF444444),
                  ),
                ),
                Text(
                  weight,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF666666),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.inter(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF444444),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      originalPrice,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF777777),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF326A32),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(width: 24, height: 3, color: Colors.white),
              const SizedBox(width: 24),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '1',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF326A32),
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Icon(Icons.add, color: Colors.white, size: 24),
              //Image.network('https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/32c07b56fcedf450d98dd12ef6d9a409a8d074af?placeholderIfAbsent=true', width: 23),
            ],
          ),
        ),
      ],
    );
  }
}
