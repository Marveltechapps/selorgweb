import 'package:flutter/material.dart';

class InputDesign extends StatelessWidget {
  const InputDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(
              "https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/bf020de15558ab95ba89b4938d61a7c9ff0ac5b0?placeholderIfAbsent=true",
            ),
            const SizedBox(width: 31), // Gap between images
            _buildImage(
              "https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/35b22bb81c7597799e36609f6fed95385cd37934?placeholderIfAbsent=true",
            ),
            const SizedBox(width: 31),
            _buildImage(
              "https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/f089df0bdd85ec06bf6bc52e6b97c4c320de5063?placeholderIfAbsent=true",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 240, maxWidth: 409),
      child: SizedBox(
        width: 409,
        child: AspectRatio(
          aspectRatio: 1.72,
          child: Image.network(
            imageUrl,
            fit: BoxFit.contain,
            alignment: Alignment.center,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[200],
                child: const Center(
                  child: Icon(Icons.error_outline, color: Colors.grey),
                ),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                color: Colors.grey[100],
                child: const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
