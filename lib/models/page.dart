class Pages {
  int page;
  int perPage;
  int total;
  int totalPages;
  Author author;
  List<Data> data;

  Pages({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.author,
    this.data,
  });

  factory Pages.fromJson(Map<String, dynamic> json) {
    return Pages(
      page: json["page"],
      perPage: json["per_page"],
      total: json["total"],
      totalPages: json["total_pages"],
      author: Author.fromJson(json["author"]),
      data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
    );
  }
}

class Author {
  String firstName;
  String lastName;

  Author({
    this.firstName,
    this.lastName,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      firstName: json["first_name"],
      lastName: json["last_name"],
    );
  }
}

class Data {
  int id;
  String firstName;
  String lastName;
  String avatar;
  List<Image> image;

  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.avatar,
    this.image,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json["id"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
      image: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    );
  }
}

class Image {
  int id;
  String imageName;

  Image({
    this.id,
    this.imageName,
  });

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      id: json["id"],
      imageName: json["imageName"],
    );
  }
}
