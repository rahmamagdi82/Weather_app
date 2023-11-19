import 'package:flutter/material.dart';
import 'package:weather/core/utiles/resources/font_manager.dart';
import 'package:weather/core/utiles/resources/style_manager.dart';
import 'package:weather/core/utiles/resources/values_manager.dart';
import 'package:weather/features/home/presentation/views/widgets/weather_details_container.dart';

import '../../../../../core/utiles/resources/color_manager.dart';

class CurrentLocationViewBody extends StatelessWidget {
  const CurrentLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: ColorManager.backgroundGradient
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on_outlined),
                  const SizedBox(width: AppSize.s20,),
                  Text('Cairo',style: FontStyles.getBoldStyle(),),
                ],
              ),
              const SizedBox(height: AppSize.s66,),
              Image.network('https://openweathermap.org/img/wn/10d@2x.png',),
              const SizedBox(height: AppSize.s34,),
              const WeatherDetailsContainer()

            ],
          ),
        ),
      ),
    );
  }
}
