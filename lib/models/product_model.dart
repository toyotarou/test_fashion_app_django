class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.isFeatured,
    required this.clothesType,
    required this.ratings,
    required this.colors,
    required this.imageUrls,
    required this.sizes,
    required this.createdAt,
    required this.category,
    required this.brand,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      title: map['title'] as String,
      price: map['price'] as double,
      description: map['description'] as String,
      isFeatured: map['is_featured'] as bool,
      clothesType: map['clothesType'] as String,
      ratings: map['ratings'] as double,
      colors: List<String>.from(map['colors'] as List),
      imageUrls: List<String>.from(map['imageUrls'] as List),
      sizes: List<String>.from(map['sizes'] as List),
      createdAt: DateTime.parse(map['created_at'] as String),
      category: map['category'] as int,
      brand: map['brand'] as int,
    );
  }

  final int id;
  final String title;
  final double price;
  final String description;
  final bool isFeatured;
  final String clothesType;
  final double ratings;
  final List<String> colors;
  final List<String> imageUrls;
  final List<String> sizes;
  final DateTime createdAt;
  final int category;
  final int brand;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'is_featured': isFeatured,
      'clothesType': clothesType,
      'ratings': ratings,
      'colors': colors,
      'imageUrls': imageUrls,
      'sizes': sizes,
      'created_at': createdAt.toIso8601String(),
      'category': category,
      'brand': brand,
    };
  }
}
