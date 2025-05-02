import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryInstructionWidget extends StatelessWidget {
  const DeliveryInstructionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Instructions',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF222222),
            ),
          ),
          Text(
            'Delivery partner will be notified',
            style: GoogleFonts.poppins(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF666666),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildInstructionBox(
                  title: 'No Contact Delivery',
                  description:
                      'Delivery partner will leave\nyour order at your door',
                ),
              ),
              const SizedBox(width: 19),
              Expanded(
                child: _buildInstructionBox(
                  title: 'Do Not Ring The Bell',
                  description: 'Delivery partner will not ring the bell',
                ),
              ),
              const SizedBox(width: 19),
              _buildReturnBottlesBox(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionBox({
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFAAAAAA)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 21,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReturnBottlesBox() {
    return Container(
      width: 311,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFAAAAAA)),
      ),
      child: Row(
        children: [
          const SizedBox(width: 25, height: 25),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Return PET Bottles',
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF222222),
                  ),
                ),
                Text(
                  'Send plastic bottles back with our delivery partner.',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF666666),
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