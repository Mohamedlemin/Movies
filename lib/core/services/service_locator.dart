import 'package:get_it/get_it.dart';

import '../../data/datasource/remote/remote_data_source.dart';
import '../../data/repository/movie_repository.dart';
import '../../domain/repository/base_movies_repository.dart';
import '../../domain/usecases/get_now_playing.dart';
import '../../domain/usecases/get_popular.dart';
import '../../domain/usecases/get_top_rated.dart';
import '../../presentation/controlles/movies_bloc.dart';


 final sl = GetIt.instance;

class ServiceLocator{
 void init(){
   /// Movies Bloc
   sl.registerFactory(() => MovieBloc(sl(),sl(),sl()));
   /// Use cases
    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedUseCase(sl()));

   /// REPOSITORY
   sl.registerLazySingleton<BaseMoviesRepository>(() => MovieRepository(sl()));
   /// Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());

  }
}