import 'package:flutter/material.dart';
import 'package:weather/core/utiles/router_manager.dart';



void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig:  AppRouter.router,
      theme: ThemeData.dark(),
    );
  }
}

