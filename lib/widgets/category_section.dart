import 'package:flutter/material.dart';
import 'package:selorgweb/screens/product_list_screen.dart';

class CategoryExplorer extends StatelessWidget {
  const CategoryExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Explore by Categories',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1B4332),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Image.network(
                  //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/d00cee30a16565d55c792fc2439db0fd40c472ea?placeholderIfAbsent=true',
                  //   width: 38,
                  //   height: 38,
                  //   fit: BoxFit.contain,
                  // ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 28,
                runSpacing: 28,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductListScreen();
                          },
                        ),
                      );
                    },
                    child: _buildCategoryCard(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/1f5fafc7400bb5fdb0fc3fca670fc0538f0ebde5?placeholderIfAbsent=true',
                      title: 'Fruits & Vegetable',
                      width: 246,
                      imageAspectRatio: 2,
                    ),
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/b3e2069f2fc5f6a052b740a61df2903d35c9d588?placeholderIfAbsent=true',
                    title: 'Atta, Rice, Oil & Dals',
                    width: 247,
                    imageAspectRatio: 1.76,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/b1b08f30a14986905a57dfb6fe808205bb2ab741?placeholderIfAbsent=true',
                    title: 'Dairy, Bread\n& Eggs',
                    width: 146,
                    imageAspectRatio: 1.52,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/96aef732580e34350aecfb009873171b4b604047?placeholderIfAbsent=true',
                    title: 'Masalas &\nWhole spices',
                    width: 146,
                    imageAspectRatio: 1.15,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/3982fc5096571dffcc3316e16fd77bb95840654a?placeholderIfAbsent=true',
                    title: 'Salt Sugar\n& Jaggery',
                    width: 146,
                    imageAspectRatio: 1.42,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/81c0777bed8b98060f200c7e2327d69034e3d408?placeholderIfAbsent=true',
                    title: 'Dry Fruits\n& Seeds',
                    width: 183,
                    imageAspectRatio: 1.16,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/9e3bd6e9f9581c6fbe67249070336af614ebd1a5?placeholderIfAbsent=true',
                    title: 'Grain Pulses\n& Millets',
                    width: 183,
                    imageAspectRatio: 1.15,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/50922a9d481079bd83324891fdfeadbd369da4fe?placeholderIfAbsent=true',
                    title: 'Tea Coffee\n& more',
                    width: 183,
                    imageAspectRatio: 1.16,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/cc16340048dd72c3a28af83cf2e986d1c284ab23?placeholderIfAbsent=true',
                    title: 'Breakfast & Spreads',
                    width: 183,
                    imageAspectRatio: 1.37,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/3e2bcd87624a60c6e8f50a20a9a35ae67a31d0b6?placeholderIfAbsent=true',
                    title: 'Chip & Namkeen',
                    width: 183,
                    imageAspectRatio: 1.14,
                  ),
                  _buildCategoryCard(
                    imageUrl:
                        'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/45fabf037e519a1f747798ebecf9933c5d55895b?placeholderIfAbsent=true',
                    title: 'Sweets & Chocolate',
                    width: 183,
                    imageAspectRatio: 1.26,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryCard({
    required String imageUrl,
    required String title,
    required double width,
    required double imageAspectRatio,
  }) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            height: 155,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F8E9), // lime-100
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Center(
              child: AspectRatio(
                aspectRatio: imageAspectRatio,
                child: Image.network(imageUrl, fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 6),
            height: 57,
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  letterSpacing: -0.5,
                  color: Color(0xFF333333), // neutral-800
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
