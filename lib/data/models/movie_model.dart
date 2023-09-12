

import '../../domain/entities/movie.dart';

class MovieModel extends Movies {
  MovieModel({
    required super.id,
    required super.backdrop_path,
    required super.title,
    required super.overview,
    required super.release_date,
    required super.vote_average,
    required super.genre_ids
  });


  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json["id"],
      backdrop_path: json["backdrop_path"],
      title: json["title"],
      overview: json["overview"],
      release_date: json["release_date"],
      vote_average: json["vote_average"].toDouble(), // Parse to double
      // poster_path: json["poster_path"],
      genre_ids: List<int>.from(json["genre_ids"].map((e)=>e)),
    );
  }
}
