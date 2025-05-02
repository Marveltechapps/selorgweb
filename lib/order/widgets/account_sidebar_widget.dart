import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/styles.dart';

class AccountSidebarWidget extends StatelessWidget {
  const AccountSidebarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(39, 56, 28, 332),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Account',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 27,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            '+91 944444999',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 23,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const Divider(color: AppColors.white),
          const SizedBox(height: 29),
          _buildMenuItem(
            'Orders',
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/a1207c356a1e6d231434afe72717a06d3e7923f6?placeholderIfAbsent=true',
            isSelected: true,
          ),
          _buildMenuItem(
            'Customer Support & FAQ',
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/4d0e58e2b40b3bf6bd2ea8ef20a6e89047882623?placeholderIfAbsent=true',
          ),
          _buildMenuItem(
            'Addresses',
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/e027655d680aec9a378e72032ba6cd15c84b503b?placeholderIfAbsent=true',
          ),
          _buildMenuItem(
            'Profile',
            'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/a7ee372dc5fe3260d0f408901e367ae8d64b00bc?placeholderIfAbsent=true',
          ),
          const SizedBox(height: 27),
          Center(
            child: Container(
              width: 133,
              height: 46,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(37),
                border: Border.all(color: AppColors.red),
              ),
              child: const Center(
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    color: AppColors.red,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    String title,
    String iconUrl, {
    bool isSelected = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary.withOpacity(0.1) : null,
        border: Border(
          bottom: BorderSide(color: AppColors.white.withOpacity(0.2)),
        ),
      ),
      child: Row(
        children: [
          //Image.network(iconUrl, width: 27, height: 27),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
