class SearchModel {
  final String imageUrl;
  final String originalTitle;
  final String overview;
  final String releaseDate;

  SearchModel({
    required this.imageUrl,
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
  });
  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      imageUrl: json['poster_path'] != null
          ? "https://image.tmdb.org/t/p/w500${json['poster_path']}"
          : "",
      originalTitle: json['original_title'] ?? 'Unknown',
      overview: json['overview'] ?? 'No description available',
      releaseDate: json['release_date'] ?? 'Unknown',
    );
  }
}
