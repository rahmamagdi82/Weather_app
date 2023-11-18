import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/features/home/presentation/views/scaffold_with_nav_bar.dart';
import 'package:weather/features/home/presentation/views/widgets/home_view_body.dart';

import '../../features/home/presentation/views/widgets/add_city_view_body.dart';
import '../../features/home/presentation/views/widgets/current_location_view_body.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');

abstract class AppRouter {
  static const homeViewPath = '/homeView';
  static const currentLocationViewPath = '/currentLocationView';

  static const addCityViewPath = '/addCityView';

  static const scaffoldWithNavBarViewPath = '/scaffoldWithNavBarView';



  static final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // the UI shell
          return ScaffoldWithNavBar(
              navigationShell: navigationShell);
        },
        branches: [
          // first branch (A)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorAKey,
            routes: [
              // top route inside branch
              GoRoute(
                  path: currentLocationViewPath,
                  pageBuilder: (context, state) =>  const NoTransitionPage(
                    child: CurrentLocationViewBody(),
                  ),
              ),
            ],
          ),
          // second branch (B)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBKey,
            routes: [
              // top route inside branch
              GoRoute(
                  path: homeViewPath,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: HomeViewBody(),
                  ),
              ),
            ],
          ),
          // second branch (C)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: addCityViewPath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: AddCityViewBody(),
                ),
              ),
            ],
          ),
        ],
      ),

    ],
  );
}
