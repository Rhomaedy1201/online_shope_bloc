part of 'splash_bloc.dart';

sealed class SplashState {}

final class SplashInitial extends SplashState {}

final class SplashLoading extends SplashState {}

final class SplashLoaded extends SplashState {
  final bool isLogedIn;
  SplashLoaded(this.isLogedIn);
}
