import 'package:flutter/material.dart';
import 'package:weather/core/utiles/resources/font_manager.dart';

import '../../../../../core/utiles/resources/style_manager.dart';

class DegreeWidget extends StatelessWidget {
  const DegreeWidget({super.key, required this.degree});
  final String degree;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(degree,style: FontStyles.getRegularStyle(fontSize: FontSize.s45),),
        Text('°',style: FontStyles.getRegularStyle(fontSize: FontSize.s30),textAlign: TextAlign.end,),
      ],
    );
  }
}
