part of 'movies_cubit.dart';

sealed class MoviesState extends Equatable {
  const MoviesState();
}

final class MoviesInitial extends MoviesState {
  @override
  List<Object> get props => [];
}
