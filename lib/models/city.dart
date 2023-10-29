class City {
  int id;
  String name;
  String imageUrl;
  bool isPopular;

  City(
      {required this.id,
      required this.name,
      required this.imageUrl,
      this.isPopular = false});
}
