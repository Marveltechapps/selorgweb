import 'package:flutter/material.dart';
import '../utils/styles.dart';
import 'category_card.dart';

class PosiSection extends StatelessWidget {
  const PosiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        return Container(
          constraints: const BoxConstraints(
            maxWidth: 990,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Grab & Go essentials for you!',
                style: AppStyles.titleStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 65,
                runSpacing: 40,
                alignment: WrapAlignment.start,
                children: [
                  CategoryCard(
                    backgroundImageUrl: 'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/de5e8a09aa2bd67ad39d268c976a8dc9be8b9287?placeholderIfAbsent=true',
                    productImageUrl: 'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/fb4bf6d8286f662bfa55f764ed2ee000169e0369?placeholderIfAbsent=true',
                    title: 'Fruits & Vegetable',
                  ),
                  CategoryCard(
                    backgroundImageUrl: 'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/73e3930ba083879c881b4d2b5908dcca642c10cd?placeholderIfAbsent=true',
                    productImageUrl: 'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/dda188c3879ec3146bec6180afb9797531a45397?placeholderIfAbsent=true',
                    title: 'Atta, Rice,\nOil & Dals',
                  ),
                  CategoryCard(
                    backgroundImageUrl: 'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/af4f9e44ac2bbca278b5edd35b0969a49f3e9ddd?placeholderIfAbsent=true',
                    productImageUrl: 'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/8d0e5cf88ccf2cd3855c07b77b63d8049ab6db20?placeholderIfAbsent=true',
                    title: 'Dairy, Bread\n& Eggs',
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}