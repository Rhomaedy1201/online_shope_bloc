import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<LoadSplash>((event, emit) async {
      emit(SplashLoading());
      await Future.delayed(Duration(seconds: 3));
      bool isLogedIn = true;
      emit(SplashLoaded(isLogedIn));
    });
  }
}
