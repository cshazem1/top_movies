import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:top_movies/core/utils/api_service.dart';
import 'package:top_movies/features/home/data/repo/home_repo_imp.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio())); // Register ApiService first
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>())); // Then register HomeRepoImp
}
