class MoviesModel {
  MoviesModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  MoviesModel.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  num? page;
  List<Results>? results;
  num? totalPages;
  num? totalResults;
  MoviesModel copyWith({
    num? page,
    List<Results>? results,
    num? totalPages,
    num? totalResults,
  }) =>
      MoviesModel(
        page: page ?? this.page,
        results: results ?? this.results,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}

class Results {
  Results({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.adult,
    this.title,
    this.originalLanguage,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Results.fromJson(dynamic json) {
    backdropPath = json['backdrop_path'];
    id = json['id'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    adult = json['adult'];
    title = json['title'];
    originalLanguage = json['original_language'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
  String? backdropPath;
  num? id;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? mediaType;
  bool? adult;
  String? title;
  String? originalLanguage;
  List<num>? genreIds;
  num? popularity;
  String? releaseDate;
  bool? video;
  num? voteAverage;
  num? voteCount;
  Results copyWith({
    String? backdropPath,
    num? id,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? mediaType,
    bool? adult,
    String? title,
    String? originalLanguage,
    List<num>? genreIds,
    num? popularity,
    String? releaseDate,
    bool? video,
    num? voteAverage,
    num? voteCount,
  }) =>
      Results(
        backdropPath: backdropPath ?? this.backdropPath,
        id: id ?? this.id,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        posterPath: posterPath ?? this.posterPath,
        mediaType: mediaType ?? this.mediaType,
        adult: adult ?? this.adult,
        title: title ?? this.title,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        genreIds: genreIds ?? this.genreIds,
        popularity: popularity ?? this.popularity,
        releaseDate: releaseDate ?? this.releaseDate,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['backdrop_path'] = backdropPath;
    map['id'] = id;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['poster_path'] = posterPath;
    map['media_type'] = mediaType;
    map['adult'] = adult;
    map['title'] = title;
    map['original_language'] = originalLanguage;
    map['genre_ids'] = genreIds;
    map['popularity'] = popularity;
    map['release_date'] = releaseDate;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}
