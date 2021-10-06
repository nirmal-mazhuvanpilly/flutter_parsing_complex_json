class PhotoList {
  List<Photos> photos;
  PhotoList({
    this.photos,
  });

  factory PhotoList.fromJson(List<dynamic> json) {
    return PhotoList(photos: json.map((x) => Photos.fromJson(x)).toList());
  }
}

class Photos {
  int id;
  String title;
  String url;
  Photos({
    this.id,
    this.title,
    this.url,
  });

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      id: json["id"],
      title: json["title"],
      url: json["url"],
    );
  }
}
