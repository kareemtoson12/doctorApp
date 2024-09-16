import 'package:doctor_app/core/di/dependicy_injection.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/homeScreen/home_screen.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/sigUp/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sigUp/sign_up_screen.dart';
import 'package:doctor_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route gnerateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getit<LoginCubit>(),
                child: LoginScreen()));
      case Routes.SignUpScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<SignupCubit>(),
                  child: const SignupScreen(),
                ));

      case Routes.SplashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                body: Center(
                    child: Text('No route specified for${settings.name}'))));
    }
  }
}
