class ArticalModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticalModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  factory ArticalModel.fromjeson(jeson) {
    return ArticalModel(
      image: jeson["urlToImage"],
      title: jeson["title"],
      subTitle: jeson["description"],
    );
  }
}
