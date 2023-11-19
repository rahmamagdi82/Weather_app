import 'package:flutter/material.dart';
import 'package:weather/core/utiles/resources/values_manager.dart';
import 'package:weather/features/home/presentation/views/widgets/weather_details_container.dart';

import '../../../../../core/utiles/location_services.dart';
import '../../../../../core/utiles/resources/color_manager.dart';
import 'city_name_current_location.dart';

class CurrentLocationViewBody extends StatefulWidget {
  const CurrentLocationViewBody({super.key});

  @override
  State<CurrentLocationViewBody> createState() => _CurrentLocationViewBodyState();
}

class _CurrentLocationViewBodyState extends State<CurrentLocationViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    determinePosition().then((value) => print(value.toString()));
  }

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
              const CityNameCurrentLocation(city: 'Cairo',),
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
