import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/NoWeatherBody.dart';
import 'package:weather_app/views/WeatherInfoBody.dart';
import 'package:weather_app/views/search_view.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.only(left: 13),
            child: Text(
              'Weather App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is LoadingWeatherState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherSuccessState) {
            return WeatherInfoBody(weatherModel: state.weatherModel);
          } else if (state is WeatherFailureState) {
            return Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
