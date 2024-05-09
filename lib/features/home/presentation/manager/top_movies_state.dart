part of 'top_movies_cubit.dart';

@immutable
abstract class TopMoviesState {}

class TopMoviesInitial extends TopMoviesState {}
class TopMoviesLoading extends TopMoviesState {}
class TopMoviesFailure extends TopMoviesState {
  String message;
  TopMoviesFailure({required this.message});
}
class TopMoviesSuccess extends TopMoviesState {
  List<TopMovie>topMovies;
  TopMoviesSuccess({required this.topMovies});
}
