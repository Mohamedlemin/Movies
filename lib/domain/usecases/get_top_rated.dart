

import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedUseCase extends BaseUseCase<List<Movies>>{
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure,List<Movies>>> call() async {
    return await baseMoviesRepository.getTopRated();
  }

}