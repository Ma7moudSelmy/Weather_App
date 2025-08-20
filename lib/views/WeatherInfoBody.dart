import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Cairo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const Text('updated at 23:46', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(22),
                child: Image.asset('assets/images/cloudy.png'),
              ),
              const Text(
                '36°C',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const Column(
                children: [
                  Text('Maxtemp: 24', style: TextStyle(fontSize: 16)),
                  Text('Mintemp: 16', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Sunny',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
