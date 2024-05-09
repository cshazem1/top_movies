import 'package:dartz/dartz.dart';
import 'package:top_movies/core/errors/failure.dart';

import '../models/top_movie.dart';

abstract class HomeRepo{
Future<Either<Failure,List<TopMovie>>>fetchTopMovies();
}