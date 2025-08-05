import 'package:flutter/material.dart';
import 'package:weather_app/views/NoWeatherBody.dart';
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
      body: const NoWeatherBody(),
    );
  }
}
