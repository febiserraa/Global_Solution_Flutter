class ImageModel {
  String id;
  String name;
  String imageUrl;
  List<String> pests;
  List<String> diseases;
  String culture;
  String irrigation;

  ImageModel(
      {required this.name,
      required this.id,
      required this.imageUrl,
      required this.pests,
      required this.diseases,
      required this.culture,
      required this.irrigation});
}
