import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/Models/Weather_models.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apikey = "b428eb1dea214de3b92172514250608";

  WeatherServices({required this.dio});

  Future<WeatherModels> getCurrentWeather({required String cityName}) async {
    try {
      final response = await dio.get(
        "$baseUrl/forecast.json",
        queryParameters: {"key": apikey, "q": cityName, "days": 1},
      );

      if (response.statusCode == 200) {
        return WeatherModels.fromJson(response.data);
      } else {
        throw Exception("Unexpected status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data["error"]["message"] ??
          "Oops, something went wrong. Please try again later.";
      log("DioException: $errMessage");
      throw Exception(errMessage);
    } catch (e) {
      log("General Exception: $e");
      throw Exception("Oops, something went wrong. Please try again later.");
    }
  }
}
