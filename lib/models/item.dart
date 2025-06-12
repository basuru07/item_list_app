class Item {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: double.parse(json['price']),
    );
  }
}
