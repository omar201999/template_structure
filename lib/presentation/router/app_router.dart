
import 'package:flutter/material.dart';
import 'package:template_structure/presentation/screens/shared/splash_screen.dart';
import 'app_router_names.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rSplashScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );



      default:
        return null;
    }
  }
}
