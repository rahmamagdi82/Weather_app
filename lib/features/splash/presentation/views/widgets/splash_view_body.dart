import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/core/utiles/resources/color_manager.dart';
import 'package:weather/core/utiles/router_manager.dart';
import 'package:weather/gen/assets.gen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigationTo();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:  ColorManager.backgroundGradient
      ),
      child: Center(
        child: Lottie.asset(Assets.animations.logo,),
      ),
    );
  }

  void initSlidingAnimation(){
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigationTo(){
    Future.delayed(const Duration(seconds: 3),(){
      GoRouter.of(context).go(AppRouter.homeViewPath);
    });
  }

}
