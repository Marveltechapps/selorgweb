import 'package:flutter/material.dart';
import 'package:selorgweb/footer/widgets/app_download_section.dart';
import 'package:selorgweb/footer/widgets/categories_section.dart';
import 'package:selorgweb/footer/widgets/footer_section.dart';
import 'package:selorgweb/posi/widgets/categories_section.dart';
import 'package:selorgweb/utils/constant.dart';
import 'package:selorgweb/widgets/category_section.dart';
import 'package:selorgweb/widgets/custom_appbar.dart';
import 'package:selorgweb/widgets/input_design.dart';
import 'package:selorgweb/widgets/product_grid.dart';
import 'package:selorgweb/widgets/promotional_banner.dart';
import 'package:selorgweb/widgets/small_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNavigationBar(),
            SizedBox(
              height: 500,
              child: Stack(
                children: [
                  EmptyContainer(),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: PosiSection(),
                    ),
                  ),
                ],
              ),
            ),

            PromotionalBanner(),
            InputDesign(),
            CategoryExplorer(),
            Image.asset(bannerImage),
            ProductGrid(title: "Orange & Fresh Fruits"),
            ProductGrid(title: "Orange & Fresh Fruits"),
            ProductGrid(title: "Orange & Fresh Fruits"),
            ProductGrid(title: "Orange & Fresh Fruits"),
            AppDownloadSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
