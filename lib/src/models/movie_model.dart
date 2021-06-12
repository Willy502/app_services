// Generated by https://quicktype.io

class Movie {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Movie.fromJsonMap(Map<String, dynamic> json) {
    this.adult = json["adult"];
    this.backdropPath = json["backdrop_path"];
    this.genreIds = json["genre_ids"];
    this.id = json["id"];
    this.originalLanguage = json["original_language"];
    this.originalTitle = json["original_title"];
    this.overview = json["overview"];
    this.popularity = json["popularity"];
    this.posterPath = json["poster_path"];
    this.releaseDate = json["release_date"];
    this.title = json["title"];
    this.video = json["video"];
    this.voteAverage = json["vote_average"];
    this.voteCount = json["vote_count"];
  }
}
