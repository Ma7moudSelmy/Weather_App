import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeViews()),
    );
  }

  MaterialColor getThemeColor(String condition) {
    condition = condition.toLowerCase();

    if (condition.contains("sunny") || condition.contains("clear")) {
      return Colors.orange;
    } else if (condition.contains("partly cloudy") ||
        condition.contains("cloudy")) {
      return Colors.blueGrey;
    } else if (condition.contains("overcast")) {
      return Colors.grey;
    } else if (condition.contains("mist") || condition.contains("fog")) {
      return Colors.blueGrey;
    } else if (condition.contains("rain") ||
        condition.contains("drizzle") ||
        condition.contains("shower")) {
      return Colors.blue;
    } else if (condition.contains("snow") || condition.contains("blizzard")) {
      return Colors.lightBlue;
    } else if (condition.contains("sleet") ||
        condition.contains("ice pellets")) {
      return Colors.cyan;
    } else if (condition.contains("thunder")) {
      return Colors.deepPurple;
    }
    return Colors.teal;
  }
}
