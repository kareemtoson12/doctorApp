import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/shared_pref_helpers.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependicy_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
