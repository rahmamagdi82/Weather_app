import 'package:flutter/material.dart';
import 'package:weather/pressentation/weather_screen/view/weather_result_view.dart';

import 'app/di.dart';


void main() async{
  await initAppModule();
  await initWeatherModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const WeatherResult(),
    );
  }
}

