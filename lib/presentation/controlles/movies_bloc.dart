import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';


import '../../core/services/service_locator.dart';
import '../../core/utils/enums.dart';
import '../../domain/usecases/get_now_playing.dart';
import '../../domain/usecases/get_popular.dart';
import '../../domain/usecases/get_top_rated.dart';
import 'movies_events.dart';
import 'movies_states.dart';

class MovieBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingUseCase getNowPlayingUseCase;
  final GetPopularUseCase getPopularUseCase;
  final GetTopRatedUseCase getTopRatedUseCase;

  MovieBloc(this.getNowPlayingUseCase, this.getTopRatedUseCase,
      this.getPopularUseCase)
      : super(MoviesState()) {
    on<GetNowPlayingEvent>(_getNowPlayingMethod);
    on<GetPopularEvent>(_getPopularMethod);
    on<GetTopRatedEvent>(_getTopRatedMethod);
  }

  FutureOr<void> _getNowPlayingMethod(
      GetNowPlayingEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingUseCase();
    result.fold(
        (l) => emit(state.copyWith(
            nowPlayingState: RequestState.error, nowPlayingMessage: l.message)),
        (r) => emit(state.copyWith(
            nowPlaying: r, nowPlayingState: RequestState.loaded)));
  }

  FutureOr<void> _getPopularMethod(
      GetPopularEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularUseCase();
    result.fold(
        (l) => emit(state.copyWith(
            popularState: RequestState.error, popularMessage: l.message)),
        (r) => emit(state.copyWith(
            popularMovies: r, popularState: RequestState.loaded)));
  }

  FutureOr<void> _getTopRatedMethod(
      GetTopRatedEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedUseCase();
    result.fold(
        (l) => emit(state.copyWith(
            topRatedState: RequestState.error, topRatedMessage: l.message)),
        (r) => emit(state.copyWith(
            topRatedState: RequestState.loaded, topRatedMovies: r)));
  }
}
