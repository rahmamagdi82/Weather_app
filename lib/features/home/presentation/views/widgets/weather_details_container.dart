import 'package:flutter/material.dart';

import '../../../../../core/utiles/resources/color_manager.dart';
import '../../../../../core/utiles/resources/style_manager.dart';
import '../../../../../core/utiles/resources/values_manager.dart';
import 'degree_widget.dart';
import 'details_with_icon.dart';

class WeatherDetailsContainer extends StatelessWidget {
  const WeatherDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: ShapeDecoration(
        color: ColorManager.whiteWithOpacity30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
      ),
      child: Column(
        children: [
          Text('Today, 12 September',style: FontStyles.getRegularStyle(),),
          const SizedBox(height: AppSize.s15,),
          const DegreeWidget(),
          const SizedBox(height: AppSize.s20,),
          Text('Cloudy',style: FontStyles.getBoldStyle(),),
          const SizedBox(height: AppSize.s27,),
          const DetailsWithIcon(title: 'Wind', value: '10 km/h', icon: Icons.wind_power,),
          const SizedBox(height: AppSize.s20,),
          const DetailsWithIcon(title: 'Wind', value: '10 km/h', icon: Icons.heat_pump,),
        ],
      ),
    );
  }
}
