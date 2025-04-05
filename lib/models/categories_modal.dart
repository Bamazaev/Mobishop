import 'dart:ui';

class ProductModal {
  final int id;
  final String title;
  final String decoration;
  final String review;
  final String seller;
  final String image;
  final double price;
  final List<Color> color;
  final String Category;
  final double rate;
  int quantity;

  ProductModal({
    required this.id,
    required this.title,
    required this.decoration,
    required this.review,
    required this.seller,
    required this.image,
    required this.price,
    required this.color,
    required this.Category,
    required this.rate,
    required this.quantity,
  });
}


class CategoriesModal {
  final int id;
  final String imageUrl;
  final String subtitle;

  CategoriesModal({
    required this.id,
    required this.imageUrl, 
    required this.subtitle,
  });
}