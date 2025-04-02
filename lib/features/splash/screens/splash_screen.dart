import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shope_bloc/core/config/app_router.dart';
import '../bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          if (state.isLogedIn) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRouter.homeScreen,
              (route) => false,
            );
          } else {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRouter.authScreen,
              (route) => false,
            );
          }
        }
      },
      child: Scaffold(
        body: Center(
          child: Text(
            "LOGO",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
