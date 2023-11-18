import 'package:flutter/material.dart';

import '../utiles/resources/color_manager.dart';
import 'navigation_destination.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.currentIndex, this.goBranch});
  
  final int currentIndex;
  final void Function(int)? goBranch;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0.0,
      backgroundColor: ColorManager.lightMove,
      selectedIndex: currentIndex,
      // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorColor: ColorManager.yellow,
      destinations: const [
        CustomNavigationDestination(label: 'Current Location', icon: Icons.location_on,),
        CustomNavigationDestination(label: 'Cities', icon: Icons.location_city,),
        CustomNavigationDestination(label: 'Add city', icon: Icons.add,),
      ],
      onDestinationSelected: goBranch,
    );
  }
}
