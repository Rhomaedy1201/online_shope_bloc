import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shope_bloc/features/auth/screens/auth_screen.dart';
import 'package:online_shope_bloc/features/home/screens/home_screen.dart';
import 'package:online_shope_bloc/features/splash/bloc/splash_bloc.dart';
import 'package:online_shope_bloc/features/splash/screens/splash_screen.dart';

class AppRouter {
  static const authScreen = "/auth-screen";
  static const homeScreen = "/home";
  static const splashScreen = "/splash-screen";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authScreen:
        return MaterialPageRoute(builder: (context) => const AuthScreen());
      case splashScreen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => SplashBloc()..add(LoadSplash()),
                child: const SplashScreen(),
              ),
        );
      case homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('Halaman tidak ditemukan')),
              ),
        );
    }
  }
}
