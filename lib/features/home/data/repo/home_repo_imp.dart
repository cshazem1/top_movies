import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_service.dart';
import '../models/top_movie.dart';
import 'home_repo.dart';

class HomeRepoImp extends HomeRepo {
  ApiService apiService;

  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<TopMovie>>> fetchTopMovies() async {
    // TODO: implement fetchTopMovies
    List<TopMovie> topMovie = [];
    try {
      var response = await apiService.get(
          xKey: '5f85dfe0f6msh3efded05d9a263ap161bdfjsnfd5da46b559d',
          xHost: 'imdb-top-100-movies1.p.rapidapi.com');
      for (var item in response) {
        topMovie.add(TopMovie.fromJson(item));
      }
      return right(topMovie);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
