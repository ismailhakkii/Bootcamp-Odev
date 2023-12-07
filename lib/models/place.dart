class Place {
  final String name;
  final String description;
  final String imageUrl;

  Place({required this.name, required this.description, required this.imageUrl});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }
}
