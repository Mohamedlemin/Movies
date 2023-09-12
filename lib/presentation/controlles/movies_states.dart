import 'package:equatable/equatable.dart';

import '../../core/utils/enums.dart';
import '../../domain/entities/movie.dart';


class MoviesState extends Equatable {
  final List<Movies> nowPlaying;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  final List<Movies> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  final List<Movies> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  MoviesState(
      {this.nowPlaying = const [],
      this.nowPlayingState = RequestState.loading,
      this.nowPlayingMessage = '',
      this.popularMovies = const [],
      this.popularState = RequestState.loading,
      this.popularMessage = '',
      this.topRatedMovies = const [],
      this.topRatedState = RequestState.loading,
      this.topRatedMessage = ''});

  MoviesState copyWith({
    List<Movies>? nowPlaying,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movies>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movies>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
        nowPlaying: nowPlaying ?? this.nowPlaying,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularState: popularState ?? this.popularState,
        popularMessage: popularMessage ?? this.popularMessage,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedState: topRatedState ?? this.topRatedState,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage);
  }

  @override
  List<Object?> get props => [
        nowPlaying,
        nowPlayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedMovies,
        topRatedState,
        topRatedMessage
      ];
}
