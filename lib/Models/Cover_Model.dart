class CoverModel {
  final String image;
  final String name;

  CoverModel({required this.image, required this.name});

  static List<CoverModel> Cover = [
    CoverModel(image: 'assets/cover/cover3.png', name: 'Black Collection '),
    CoverModel(image: 'assets/cover/cover2.png', name: 'Cover 2'),
    CoverModel(image: 'assets/cover/cover1.png', name: 'Cover 3'),
  ];
}
