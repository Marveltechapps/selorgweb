import 'package:flutter/material.dart';
import 'package:selorgweb/footer/widgets/app_download_section.dart';
import 'package:selorgweb/footer/widgets/categories_section.dart';
import 'package:selorgweb/footer/widgets/footer_section.dart';
import 'package:selorgweb/model/produt_detail/product_model.dart';
import 'package:selorgweb/widgets/custom_appbar.dart';
import 'package:selorgweb/widgets/product_information/similar_product_information.dart';
import 'package:selorgweb/widgets/product_information/tomato_country_widget.dart';

class ProductInformationCard extends StatelessWidget {
  const ProductInformationCard({super.key});

  static List<Product> products = [
    Product(
      name: 'Tomato',
      quantity: '1 kg',
      currentPrice: 50.0,
      originalPrice: 60.0,
      imageUrl:
          'https://cdn.builder.io/api/v1/image/assets/TEMP/782afd439a1655a91baf7d7669f9d56d8e0c079d?placeholderIfAbsent=true',
      discountPercentage: 16.67,
    ),
    Product(
      name: 'Tomato',
      quantity: '1 kg',
      currentPrice: 50.0,
      originalPrice: 60.0,
      imageUrl:
          'https://cdn.builder.io/api/v1/image/assets/TEMP/782afd439a1655a91baf7d7669f9d56d8e0c079d?placeholderIfAbsent=true',
      discountPercentage: 16.67,
    ),
    Product(
      name: 'Tomato',
      quantity: '1 kg',
      currentPrice: 50.0,
      originalPrice: 60.0,
      imageUrl:
          'https://cdn.builder.io/api/v1/image/assets/TEMP/782afd439a1655a91baf7d7669f9d56d8e0c079d?placeholderIfAbsent=true',
      discountPercentage: 16.67,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNavigationBar(),
            LayoutBuilder(
              builder: (context, constraints) {
                final isDesktop = constraints.maxWidth > 991;

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(top: 44),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 72),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/782afd439a1655a91baf7d7669f9d56d8e0c079d?placeholderIfAbsent=true',
                              width: 495,
                              fit: BoxFit.contain,
                            ),
                            TomatoCountryWidget(),
                          ],
                        ),
                      ),
                      SizedBox(height: isDesktop ? 115 : 40),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 35,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Product Information',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  // Image.network(
                                  //   'https://cdn.builder.io/api/v1/image/assets/TEMP/a49cc3c134c01ca65eebad876ff908452a17c4d5?placeholderIfAbsent=true',
                                  //   width: 56,
                                  //   height: 56,
                                  //   fit: BoxFit.contain,
                                  // ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Text(
                                'About - Tomatoes are a yummy fruit used in cooking purposes and foods like salads, sauces, and sandwiches.\n\n'
                                'Health Benefits - It improves immunity and aids in good metabolism.\n\n'
                                'Nutrition - It is rich in nutrients such as vitamin C, vitamin K, potassium, folate, and antioxidants.\n\n'
                                'Origin of Place - It is procured from the farms of India.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF565656),
                                  height: 1.25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SimilarProductsSection(products: products),
            AppDownloadSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
