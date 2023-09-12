import 'package:dio/dio.dart';


import '../../../core/error/exceptions.dart';
import '../../../core/network/api_constant.dart';
import '../../../core/network/error_message_model.dart';
import '../../../domain/entities/movie.dart';
import '../../models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<Movies>> getNowPlaying();
  Future<List<Movies>> getPopular();
  Future<List<Movies>> getTopRated();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource{

 @override
 Future<List<Movies>> getNowPlaying() async {
   final response = await Dio().get(ApiConstant.nowPlayingPath);

    if(response.statusCode == 200){
      return List<Movies>.from((response.data["results"] as List)
          .map((e)=>MovieModel.fromJson(e),));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));

    }
  }

  @override
 Future<List<Movies>> getPopular() async {
    final response = await Dio().get(ApiConstant.popularPath);
    if(response.statusCode == 200){
      return List<Movies>.from((response.data["results"] as List)
          .map((e)=>MovieModel.fromJson(e),));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
 Future<List<Movies>> getTopRated() async {
    final response = await Dio().get(ApiConstant.topRatedPath);
    if(response.statusCode == 200){
      return List<Movies>.from((response.data["results"] as List)
          .map((e)=>MovieModel.fromJson(e),));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

}