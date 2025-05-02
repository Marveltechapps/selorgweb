import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 4),
        ],
      ),
      padding: const EdgeInsets.all(19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Row(
                children: [
                  // Image.network('https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/5dd15b4849236915d8437d3bd8834c5bbb94596f?placeholderIfAbsent=true', width: 24),
                  const SizedBox(width: 8),
                  Text(
                    'Order Delivered',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF444444),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    'Arrived in',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF222222),
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFCDE19A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        // Image.network(
                        //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/0190ebbe4dd7d673fe2ba14fb80b0cc67fb5adc3?placeholderIfAbsent=true',
                        //   width: 13,
                        // ),
                        const SizedBox(width: 4),
                        Text(
                          '6 MINS',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF496308),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 19),
          Text(
            '3 Items in Order',
            style: GoogleFonts.poppins(
              color: const Color(0xFF222222),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 19),
          _buildOrderItem(
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/005d2b5686daa41572fa4af8d6e799e579b87140?placeholderIfAbsent=true',
            'Ghee',
            '1/2 L',
            '1 Unit',
            '₹120',
            '₹145',
          ),
          const SizedBox(height: 19),
          _buildOrderItem(
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/e306874934321a11f90aeab628f86fa1452da62d?placeholderIfAbsent=true',
            'Bread',
            '350g',
            '1 Unit',
            '₹120',
            '₹145',
          ),
          const SizedBox(height: 19),
          _buildOrderItem(
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/23544cd7e2f90b73d73078cecc90cb304acc9d12?placeholderIfAbsent=true',
            'Whole Wheat atta',
            '500g',
            '1 Unit',
            '₹120',
            '₹145',
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(
    String imageUrl,
    String name,
    String weight,
    String quantity,
    String price,
    String originalPrice,
  ) {
    return Row(
      children: [
        Image.network(imageUrl, width: 46, height: 46),
        const SizedBox(width: 21),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.poppins(
                color: const Color(0xFF444444),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              weight,
              style: GoogleFonts.poppins(
                color: const Color(0xFF666666),
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Text(
          quantity,
          style: GoogleFonts.poppins(
            color: const Color(0xFF666666),
            fontSize: 14,
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              price,
              style: GoogleFonts.poppins(
                color: const Color(0xFF444444),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              originalPrice,
              style: GoogleFonts.poppins(
                color: const Color(0xFFED476B),
                fontSize: 14,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
