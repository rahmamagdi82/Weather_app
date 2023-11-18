import 'package:flutter/material.dart';
import 'package:weather/core/utiles/resources/color_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorManager.backgroundGradient
      ),
    );
  }
}
