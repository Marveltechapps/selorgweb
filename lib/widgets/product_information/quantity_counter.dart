import 'package:flutter/material.dart';
import 'package:selorgweb/widgets/product_information/constants/colors.dart';

class QuantityCounter extends StatelessWidget {
  final int quantity;
  final Function(int) onChanged;

  const QuantityCounter({
    super.key,
    required this.quantity,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton(
            icon: Icons.remove,
            onPressed: () => onChanged(quantity - 1),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              quantity.toString(),
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26,
                color: AppColors.primary,
              ),
            ),
          ),
          _buildButton(
            icon: Icons.add,
            onPressed: () => onChanged(quantity + 1),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: Icon(icon, color: Colors.white, size: 18),
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minWidth: 24,
        minHeight: 24,
      ),
    );
  }
}