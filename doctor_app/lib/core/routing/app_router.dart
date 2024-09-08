import 'package:doctor_app/core/di/dependicy_injection.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/sigUp/sign_up_scree.dart';
import 'package:doctor_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppRouter {
  Route gnerateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (context) => getit<LoginCubit>(),child: LoginScreen()));
      case Routes.SignUpScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());

      case Routes.SplashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                body: Center(
                    child: Text('No route specified for${settings.name}'))));
    }
  }
}
