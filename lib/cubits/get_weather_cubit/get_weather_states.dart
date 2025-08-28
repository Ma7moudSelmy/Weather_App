import 'package:weather_app/Models/Weather_models.dart';

abstract class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class LoadingWeatherState extends WeatherStates {}

class WeatherSuccessState extends WeatherStates {
  final WeatherModels weatherModel;

  WeatherSuccessState(this.weatherModel);
}

class WeatherFailureState extends WeatherStates {
  final String errorMessage;

  WeatherFailureState(this.errorMessage);
}
