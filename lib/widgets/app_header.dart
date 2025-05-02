import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 28),
      color: const Color(0xFF0B3424),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _buildLogo(),
                    Container(
                      height: 40,
                      width: 0,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    const Text(
                      'Lattice Bridge',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                _buildSearchBar(),
                Row(
                  children: [
                    const Text(
                      'My Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 28),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Text(
                        'My Cart',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF0B3424),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          Container(
            height: 222,
            color: const Color(0xFF0B3424),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 20),
      child: Row(
        children: [
          Image.network("https://cdn.builder.io/api/v1/image/assets/TEMP/31d4d778479f952ae221f593c1d7e3928c27fd63?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371", width: 69),
          Image.network("https://cdn.builder.io/api/v1/image/assets/TEMP/7f2c7cdf156f1179450b0f59dfd42e92fad115a8?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371", width: 27),
          Image.network("https://cdn.builder.io/api/v1/image/assets/TEMP/44ac9ca3e228406554d66b8dc88e090656ee5f10?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371", width: 23),
          Image.network("https://cdn.builder.io/api/v1/image/assets/TEMP/9f42fc42bf6a6448ffd3d743f1eeb4fc4643e6aa?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371", width: 24),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      width: 524,
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.network("https://cdn.builder.io/api/v1/image/assets/TEMP/5f7c7f866dbfb3ee292dbd5cbbfb31ff1026a32c?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371", width: 17, height: 17),
          const SizedBox(width: 14),
          const Text(
            'Search For Products...',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }
}