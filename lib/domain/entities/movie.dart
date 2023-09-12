import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String backdrop_path;
  final String title;
  final String overview;
  final String release_date;
  final double vote_average;
  final List<int> genre_ids;

  Movies(
      {required this.id,
      required this.backdrop_path,
      required this.title,
      required this.overview,
      required this.release_date,
      required this.vote_average,
      required this.genre_ids});

  @override
  List<Object> get props => [
        id,
        backdrop_path,
        title,
        overview,
        release_date,
        vote_average,
        genre_ids
      ];

// "adult": false,
  // "backdrop_path": "/8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg",
  // "genre_ids": [
  // 28,
  // 878,
  // 27
  // ],
  // "id": 615656,
  // "original_language": "en",
  // "original_title": "Meg 2: The Trench",
  // "overview": "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
  // "popularity": 5037.094,
  // "poster_path": "/FQHtuf2zc8suMFE28RyvFt3FJN.jpg",
  // "release_date": "2023-08-02",
  // "title": "Meg 2: The Trench",
  // "video": false,
  // "vote_average": 7,
  // "vote_count": 1433
}
