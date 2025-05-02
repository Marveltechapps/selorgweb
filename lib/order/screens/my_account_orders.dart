import 'package:flutter/material.dart';
import 'package:selorgweb/widgets/custom_appbar.dart';
import '../constants/colors.dart';
import '../constants/styles.dart';
import '../widgets/top_navigation_widget.dart';
import '../widgets/account_sidebar_widget.dart';
import '../widgets/order_card_widget.dart';

class MyAccountOrders extends StatelessWidget {
  const MyAccountOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNavigationBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Container(
                margin: const EdgeInsets.only(top: 44),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(flex: 1, child: AccountSidebarWidget()),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(29),
                        child: Column(
                          children: [
                            OrderCardWidget(
                              productImages: const [
                                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/7283fcd62254bda5195b79e098bed8f702500baa?placeholderIfAbsent=true',
                              ],
                              date: 'Placed at 21st Jun 2024, 08:50 am',
                              amount: 183.06,
                            ),
                            OrderCardWidget(
                              productImages: const [
                                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/6b7299222796bf71a08a6bcab095d336fb4ecb57?placeholderIfAbsent=true',
                                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/88a4b54152d62b3026b5c1208e25a1a8cbf2afdc?placeholderIfAbsent=true',
                                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/989aa679aa6d380776578e60da43cd3b8e8f1f8f?placeholderIfAbsent=true',
                                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/7a0e89b351f73931d432c45145be2ad4c43cf502?placeholderIfAbsent=true',
                                'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/c467a04f4a2b7e9f08ce9dd1c82a4342877b2a6d?placeholderIfAbsent=true',
                              ],
                              date: 'Placed at 21st Jun 2024, 08:50 am',
                              amount: 183.06,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 156),
          ],
        ),
      ),
    );
  }
}
