import 'package:flutter/material.dart';

import '../../../../../core/utiles/resources/style_manager.dart';

class DegreeWidget extends StatelessWidget {
  const DegreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text('29',style: FontStyles.getRegularStyle(fontSize: 45),),
        Text('°',style: FontStyles.getRegularStyle(fontSize: 30),textAlign: TextAlign.end,),
      ],
    );
  }
}
