import 'package:flutter/material.dart';
import 'package:weather/features/home/presentation/views/widgets/title_with_icon.dart';

import '../../../../../core/utiles/resources/color_manager.dart';
import '../../../../../core/utiles/resources/style_manager.dart';
import '../../../../../core/utiles/resources/values_manager.dart';
import '../../../../../gen/assets.gen.dart';
import 'degree_widget.dart';

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
          Text(
            'Today, 12 September',
            style: FontStyles.getRegularStyle(),
          ),
          const SizedBox(
            height: AppSize.s15,
          ),
          const DegreeWidget(
            degree: '29',
          ),
          const SizedBox(
            height: AppSize.s20,
          ),
          Text(
            'Cloudy',
            style: FontStyles.getBoldStyle(),
          ),
          const SizedBox(
            height: AppSize.s27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TitleWithIcon(
                    title: 'Wind',
                    icon: Assets.images.windy,
                  ),
                  const SizedBox(
                    height: AppSize.s20,
                  ),
                  TitleWithIcon(
                    title: 'Hum',
                    icon: Assets.images.hum,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10 km/h',
                    style: FontStyles.getRegularStyle(),
                  ),
                  const SizedBox(
                    height: AppSize.s20,
                  ),
                  Text(
                    '54 %',
                    style: FontStyles.getRegularStyle(),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
