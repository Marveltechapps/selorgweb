import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(64, 80, 64, 144),
      color: const Color(0xFF0B3424),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("https://cdn.builder.io/api/v1/image/assets/TEMP/527a023c3fab8e30c3c4aa9aec152499d335a422?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371", width: 184),
          const SizedBox(width: 80),
          _buildLinkColumn([
            'Home',
            'Careers',
            'Customer support',
          ]),
          const SizedBox(width: 80),
          _buildLinkColumn([
            'Privacy Policy',
            'Terms of use',
            'Delivery areas',
          ]),
          const SizedBox(width: 80),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Download App',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                _buildStoreButton(
                  "https://cdn.builder.io/api/v1/image/assets/TEMP/0ddf1bbcc89a31d95bc1fd67ec0e7293c1363d95?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371",
                  "Get it On",
                  "Google Play",
                ),
                const SizedBox(height: 24),
                _buildStoreButton(
                  "https://cdn.builder.io/api/v1/image/assets/TEMP/b278934202df85dfaee2b292991858a374d4a6f4?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371",
                  "Download on the",
                  "App Store",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLinkColumn(List<String> links) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: links
          .map(
            (link) => Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildStoreButton(String iconUrl, String topText, String bottomText) {
    return Container(
      width: 224,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.network(iconUrl, width: 47, height: 47),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                bottomText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}