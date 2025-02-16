class HomeModel {
  final String imageUrl;
  final String originalTitle;
  final String overview;
  final String releaseDate;

  HomeModel({
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
    required this.imageUrl,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
        imageUrl: "https://image.tmdb.org/t/p/w500${json['poster_path']}",
        originalTitle: json['original_title'],
        overview: json['overview'],
        releaseDate: json['release_date']);
  }
}
