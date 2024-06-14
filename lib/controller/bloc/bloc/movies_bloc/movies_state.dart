part of 'movies_cubit.dart';

sealed class MoviesState extends Equatable {
  const MoviesState();
}

final class MoviesInitial extends MoviesState {
  @override
  List<Object> get props => [];
}

final class MoviesLoaded extends MoviesState {
  final MoviesModel moviesModel;

  const MoviesLoaded(this.moviesModel);

  @override
  List<Object> get props => [moviesModel];
}
