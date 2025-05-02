import 'package:flutter/material.dart';
import 'package:selorgweb/footer/widgets/app_download_section.dart';
import 'package:selorgweb/footer/widgets/categories_section.dart';
import 'package:selorgweb/footer/widgets/footer_section.dart';
import 'package:selorgweb/productlist/constants/styles.dart';
import 'package:selorgweb/productlist/widgets/category_item.dart';
import 'package:selorgweb/productlist/widgets/pagination_control.dart';
import 'package:selorgweb/productlist/widgets/product_card.dart';
import 'package:selorgweb/screens/product_information_card.dart';
import 'package:selorgweb/widgets/custom_appbar.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNavigationBar(),
            LayoutBuilder(
              builder: (context, constraints) {
                final isDesktop = constraints.maxWidth > 600;
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isDesktop)
                      SizedBox(
                        width: constraints.maxWidth * 0.23,
                        child: _buildCategoryList(),
                      ),
                    Expanded(child: _buildMainContent(isDesktop, context)),
                  ],
                );
              },
            ),
            AppDownloadSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CategoryItem(
            title: 'Fresh Fruits',
            imageUrl:
                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/40acc5f134230c39dc408b82a6b28ce966faab09?placeholderIfAbsent=true',
            isSelected: true,
          ),
          CategoryItem(
            title: 'Fresh Vegetables',
            imageUrl:
                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/109e40056cdb3d114b619e1798b863c4967a2e51?placeholderIfAbsent=true',
          ),
          CategoryItem(
            title: 'Combo',
            imageUrl:
                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/eaa70e2a9c03ef1b69afa44aef724d5e1ba0a3c3?placeholderIfAbsent=true',
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(bool isDesktop, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Buy Fresh Fruits Online', style: AppStyles.heading),
          const SizedBox(height: 32),
          SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ProductInformationCard();
                        },
                      ),
                    );
                  },
                  child: _buildProductGrid(),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: PaginationControl(
                    currentPage: 1,
                    totalPages: 10,
                    onPageChanged: (page) {
                      // Handle page change
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return Wrap(
      spacing: 10,
      runSpacing: 32,
      children: List.generate(
        15,
        (index) => ProductCard(
          imageUrl:
              'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/07e57bddf3de835ec81e445b378dff90a742edcf?placeholderIfAbsent=true',
          title: 'Orange',
          weight: '100g',
          price: 75,
          originalPrice: 150,
          discount: 20,
        ),
      ),
    );
  }
}
