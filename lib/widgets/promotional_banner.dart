import 'package:flutter/material.dart';

class PromotionalBanner extends StatelessWidget {
  
  const PromotionalBanner({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 991;
        final isMobile = constraints.maxWidth <= 640;

        return Container(
          constraints: BoxConstraints(
            maxWidth: isMobile
                ? 640
                : isDesktop
                    ? 1288
                    : 991,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: isDesktop
              ? _buildDesktopLayout()
              : _buildMobileLayout(),
        );
      },
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: _buildImageContainer(),
        ),
        Expanded(
          child: _buildImageContainer(),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildImageContainer(),
        _buildImageContainer(),
      ],
    );
  }

  Widget _buildImageContainer() {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
      ),
      child: Center(
        child: Image.network(
          "https://cdn.builder.io/api/v1/image/assets/TEMP/b8a043afe6094ed8f765134f6c56d7e28ae6df5d?placeholderIfAbsent=true&apiKey=06096b941d4746ae854b71463e363371",
          width: double.infinity,
          fit: BoxFit.contain,
         // semanticLabel: config.altText,
          errorBuilder: (context, error, stackTrace) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 48,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Failed to load image: ',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}