import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:top_movies/core/utils/api_service.dart';
import 'package:top_movies/features/home/data/repo/home_repo.dart';
import 'package:top_movies/features/home/data/repo/home_repo_imp.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(  getIt.get<ApiService>(),));
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
}