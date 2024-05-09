import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/top_movie.dart';
import '../../data/repo/home_repo.dart';

part 'top_movies_state.dart';

class TopMoviesCubit extends Cubit<TopMoviesState> {
 final HomeRepo homeRepo;
  TopMoviesCubit(this.homeRepo) : super(TopMoviesInitial());
  Future<void>fetchTopMovies() async {
log("message");    emit(TopMoviesLoading());
    var reesult=await homeRepo.fetchTopMovies();
    reesult.fold((failure) {

      emit(TopMoviesFailure(message: failure.mesage));
    }, (books) {
      emit(TopMoviesSuccess(topMovies: books));
    });
  }
}
