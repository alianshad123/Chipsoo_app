class SnackPacket {
  final String image;
  final String flavor;
  final String description;
  final String price;
  final String offerPrice;

  SnackPacket({
    required this.image,
    required this.flavor,
    required this.description,
    required this.price,
    required this.offerPrice,
  });

  factory SnackPacket.fromJson(Map<String, dynamic> json) {
    return SnackPacket(
      image: json['image'],
      flavor: json['flavor'],
      description: json['description'],
      price: json['price'],
      offerPrice: json['offerPrice'],
    );
  }
}
