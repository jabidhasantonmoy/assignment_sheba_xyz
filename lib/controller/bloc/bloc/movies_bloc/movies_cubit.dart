import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../model/movies_model.dart';
import '../../repositories/movies_api.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesInitial());

  Future<void> getMovies() async {
    await MoviesApi.getMoviesResponse().then((value) {
      if (value != null) {
        emit(MoviesLoaded(value));
      }
    });
  }
}
