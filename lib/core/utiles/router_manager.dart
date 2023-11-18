import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';


abstract class AppRouter {
  static const homeViewPath = '/homeView';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}