import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/screens.dart';

Route generateRoute(RouteSettings settings) {
  Object? args = settings.arguments;

  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const SplashScreen());
    case OnboardingScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const OnboardingScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const LoginScreen());
    case SignUpScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const SignUpScreen());
    case MainScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const MainScreen());
    case AvailableCarsScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const AvailableCarsScreen());
    case ProfileScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const ProfileScreen());
    case BookNowScreen.routeName:
      return MaterialPageRoute<Widget>(builder: (_) => const BookNowScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
