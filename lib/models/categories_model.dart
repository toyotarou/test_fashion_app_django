class CategoriesModel {
  CategoriesModel({
    required this.title,
    required this.id,
    required this.imageUrl,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        title: json['title'],
        id: json['id'],
        imageUrl: json['imageUrl'],
      );
  String title;
  int id;
  String imageUrl;

  Map<String, dynamic> toJson() => {
        'title': title,
        'id': id,
        'imageUrl': imageUrl,
      };
}
