class BookEnity {
  final String title;
  final String author;
  final String price;
  final String rate;
  final String image;
  BookEnity(
      {required this.title,
      required this.author,
      required this.image,
      required this.price,
      required this.rate});

  factory BookEnity.fromJson(Map<String, dynamic> json) {
    return BookEnity(
      title: json['title'] ?? '', // Provide a default value if null
      author: json['author'] ?? '', // Provide a default value if null
      price: json['price'] ?? '', // Provide a default value if null
      rate: json['rate'] ?? '', // Provide a default value if null
      image: json['image'] ?? '', // Provide a default value if null
    );
  }

  // Method to convert a BookEntity to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'price': price,
      'rate': rate,
      'image': image,
    };
  }
}
