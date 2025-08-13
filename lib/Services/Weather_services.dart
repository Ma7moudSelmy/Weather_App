import 'package:dio/dio.dart';
import 'package:weather_app/Models/Weather_models.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  WeatherServices({required this.dio});

  Future<WeatherModels> geTCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
      "$baseUrl/forecast.json?key=b428eb1dea214de3b92172514250608&q=$cityName&days=1",
    );
    WeatherModels weatherModels = WeatherModels.fromJson(response.data);
    return weatherModels;
  }
}
