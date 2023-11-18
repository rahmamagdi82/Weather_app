import 'package:flutter/material.dart';

import '../../../../../core/utiles/resources/color_manager.dart';

class CurrentLocationViewBody extends StatelessWidget {
  const CurrentLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: ColorManager.backgroundGradient
      ),
    );
  }
}
