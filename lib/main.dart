import 'package:flutter/material.dart';
import 'package:weather_app/views/home_views.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeViews();
  }
}
