import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Services/Weather_services.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());

  Future<void> getWeather({required String cityName}) async {
    try {
      emit(LoadingWeatherState());

      final weatherModel = await WeatherServices(
        dio: Dio(),
      ).getCurrentWeather(cityName: cityName);

      emit(WeatherSuccessState(weatherModel));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
