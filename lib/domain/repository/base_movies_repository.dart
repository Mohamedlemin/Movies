import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/movie.dart';

abstract class BaseMoviesRepository{

  Future<Either<Failure,List<Movies>>> getNowPlaying();
  Future<Either<Failure,List<Movies>>>  getTopRated();
  Future<Either<Failure,List<Movies>>>  getPopular();

}