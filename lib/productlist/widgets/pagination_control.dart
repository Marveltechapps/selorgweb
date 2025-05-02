import 'package:flutter/material.dart';
import '../constants/colors.dart';

class PaginationControl extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationControl({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        // _buildNavigationButton('https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/3c9127ea878d12d0d5a2cd444f4971e898e0c512?placeholderIfAbsent=true', () => onPageChanged(currentPage - 1)),
        const SizedBox(width: 8),
        ...List.generate(totalPages, (index) => _buildPageButton(index + 1)),
        const SizedBox(width: 8),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        // _buildNavigationButton('https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/b7771667183b8b2992f6d7cbfc1ad164d241af92?placeholderIfAbsent=true', () => onPageChanged(currentPage + 1)),
      ],
    );
  }

  Widget _buildPageButton(int page) {
    final isActive = page == currentPage;
    return Container(
      width: 32,
      height: 32,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isActive ? AppColors.primary : const Color(0xFFDFE3E8),
        ),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          '$page',
          style: TextStyle(
            color: isActive ? AppColors.primary : const Color(0xFF212B36),
            fontWeight: FontWeight.w700,
            fontSize: 14,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }

  
}
