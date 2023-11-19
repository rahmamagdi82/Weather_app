import 'package:flutter/material.dart';

import '../../../../../core/utiles/resources/style_manager.dart';
import '../../../../../core/utiles/resources/values_manager.dart';

class DetailsWithIcon extends StatelessWidget {
  const DetailsWithIcon({super.key, required this.title, required this.value, required this.icon});
  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(width: AppSize.s20,),
        Text(title,style: FontStyles.getRegularStyle(),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
          child: Text(
            '|',
            style: FontStyles.getRegularStyle(),
          ),
        ),
        Text(value,style: FontStyles.getRegularStyle(),),
      ],
    );
  }
}
