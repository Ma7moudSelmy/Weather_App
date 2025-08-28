import 'package:flutter/material.dart';
import 'package:weather_app/Models/Weather_models.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModels weatherModel;

  const WeatherInfoBody({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const Text('updated just now', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(22),
                child: Image.network('http:${weatherModel.image}'),
              ),
              Text(
                "${weatherModel.temp.round()}°",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Max: ${weatherModel.maxTemp.round()}°',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Min: ${weatherModel.minTemp.round()}°',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          Text(
            weatherModel.weatherCondition,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
