class Product {
  int id;
  String name;
  List<Images> images;

  Product({
    this.id,
    this.name,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      images: List<Images>.from(json["images"].map((x) => Images.fromJson(x))),
    );
  }
}

class Images {
  int id;
  String imageName;
  Images({
    this.id,
    this.imageName,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      id: json["id"],
      imageName: json["imageName"],
    );
  }
}
