class ApiConstant{
  static const String baseUrl ="https://api.themoviedb.org/3";
  static const String apiKey = "5702a75466d79c2e3b7d5ac44c673bce";
  static const String nowPlayingPath ="$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularPath ="$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedPath ="$baseUrl/movie/top_rated?api_key=$apiKey";
  static const String baseImageurl ="https://image.tmdb.org/t/p/w500";

  static  String ImageUrl(String path)=> '$baseImageurl$path';
}