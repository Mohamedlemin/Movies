import 'package:dartz/dartz.dart';


import '../../core/error/exceptions.dart';
import '../../core/error/failure.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repository/base_movies_repository.dart';
import '../datasource/remote/remote_data_source.dart';

class MovieRepository extends BaseMoviesRepository{

  BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure,List<Movies>>> getNowPlaying() async{
    final result = await baseMovieRemoteDataSource.getNowPlaying();
    try{
      return right(result);
    } on ServerException catch(failure){
     return left(ServerFailure(failure.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getPopular() async{
   final result = await baseMovieRemoteDataSource.getPopular();
   try{
     return right(result);
   } on ServerException catch(failure){
     return left(ServerFailure(failure.errorMessageModel.status_message));
   }
  }

  @override
  Future<Either<Failure, List<Movies>>> getTopRated() async{
   final result = await baseMovieRemoteDataSource.getTopRated();
   try{
     return right(result);
   } on ServerException catch(failure){
     return left(ServerFailure(failure.errorMessageModel.status_message));
   }
  }



}