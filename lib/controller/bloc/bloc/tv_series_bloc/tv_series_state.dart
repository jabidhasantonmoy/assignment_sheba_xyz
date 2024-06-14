part of 'tv_series_cubit.dart';

sealed class TvSeriesState extends Equatable {
  const TvSeriesState();
}

final class TvSeriesInitial extends TvSeriesState {
  @override
  List<Object> get props => [];
}
