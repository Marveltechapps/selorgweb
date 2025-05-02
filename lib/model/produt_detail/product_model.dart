class Product {
  final String name;
  final String quantity;
  final double currentPrice;
  final double originalPrice;
  final String imageUrl;
  final double discountPercentage;

  Product({
    required this.name,
    required this.quantity,
    required this.currentPrice,
    required this.originalPrice,
    required this.imageUrl,
    required this.discountPercentage,
  });
}