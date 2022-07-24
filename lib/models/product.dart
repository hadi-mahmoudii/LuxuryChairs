class Product {
  final int price;
  final String id, title, category, image, subtitle;
  final String description;

  Product({
    required this.price,
    required this.id,
    required this.title,
    required this.category,
    required this.image,
    required this.subtitle,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        price: json['price'],
        id: json['id'],
        title: json['title'],
        category: json['category'],
        image: json['image'],
        subtitle: json['subTitle'],
        description: json['description']);
  }
}
