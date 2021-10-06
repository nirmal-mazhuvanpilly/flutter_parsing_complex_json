class Address {
  String city;
  List<String> streets;
  Address({
    this.city,
    this.streets,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json["city"],
      streets: List<String>.from(json["streets"]),
    );
  }
}
