import 'package:flutter/material.dart';

import '../../../../../core/utiles/resources/style_manager.dart';
import '../../../../../core/utiles/resources/values_manager.dart';

class CityNameCurrentLocation extends StatelessWidget {
  const CityNameCurrentLocation({super.key, required this.city});
  final String city;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.location_on_outlined),
        const SizedBox(width: AppSize.s20,),
        Text(city,style: FontStyles.getBoldStyle(),),
      ],
    );
  }
}
