import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Models/Weather_models.dart';
import 'package:weather_app/Services/Weather_services.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search a city')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 180,
            child: TextField(
              onSubmitted: (value) async {
                weatherModels = await WeatherServices(
                  dio: Dio(),
                ).getCurrentWeather(cityName: value);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                label: const Text('Search'),
                suffixIcon: Icon(Icons.search),
                hintText: 'Enter city name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 223, 129, 7),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModels? weatherModels;
