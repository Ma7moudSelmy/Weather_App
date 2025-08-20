import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/Models/Weather_models.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apikey = "b428eb1dea214de3b92172514250608";
  WeatherServices({required this.dio});

  Future getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apikey&q=$cityName&days=1",
      );
      if (response.statusCode == 200) {
        WeatherModels weatherModels = WeatherModels.fromJson(response.data);
        return weatherModels;
      }
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data["error"]["message"] ??
          'oops something went wrong please try again later';
    } catch (e) {
      log(e.toString());
      throw Exception("opps something went wrong please try again later");
    }
  }
}
