import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utiles/resources/style_manager.dart';
import '../../../../../core/utiles/resources/values_manager.dart';

class TitleWithIcon extends StatelessWidget {
  const TitleWithIcon({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: AppSize.s20,),
        Text(title,style: FontStyles.getRegularStyle(),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
          child: Text(
            '|',
            style: FontStyles.getRegularStyle(),
          ),
        ),
      ],
    );
  }
}
