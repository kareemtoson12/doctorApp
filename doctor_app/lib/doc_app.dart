import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.gnerateRoute,
        initialRoute: Routes.SplashScreen,
        theme: ThemeData(
            primaryColor: ColorsManger.minBlue,
            scaffoldBackgroundColor: Colors.white),
        title: 'DocDoc',
      ),
    );
  }
}
