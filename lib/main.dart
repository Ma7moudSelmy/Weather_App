import 'package:flutter/material.dart';
import 'package:weather_app/views/home_views.dart'; // تأكد من مسار الاستيراد

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeViews(),
    );
  }
}
