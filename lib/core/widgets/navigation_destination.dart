import 'package:flutter/material.dart';

import '../utiles/resources/color_manager.dart';

class CustomNavigationDestination extends StatelessWidget {
  const CustomNavigationDestination({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return NavigationDestination(label: label, icon: Icon(icon,color: ColorManager.white,),);
  }
}
