part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

final class WeatherBlocLoading extends WeatherState {}

final class WeatherBlocFailure extends WeatherState {}

final class WeatherBlocSucess extends WeatherState {
  final Weather weather;

  WeatherBlocSucess(this.weather);

  List<Object> get props => [weather];
}
