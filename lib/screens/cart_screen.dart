import 'package:flutter/material.dart';
import 'package:selorgweb/cart/widgets/cart_with_no_address.dart';
import 'package:selorgweb/footer/widgets/app_download_section.dart';
import 'package:selorgweb/footer/widgets/categories_section.dart';
import 'package:selorgweb/footer/widgets/footer_section.dart';
import 'package:selorgweb/widgets/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNavigationBar(),
            CartWithNoAddress(),
            AppDownloadSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
