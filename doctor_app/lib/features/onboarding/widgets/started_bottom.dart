import 'package:doctor_app/core/helpers/extenstions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styels.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget getstartedBottom(BuildContext context) {
  // ignore: prefer_const_constructors
  return TextButton(
      onPressed: () {
        context.pushNamed(
          Routes.loginScreen,
        );
      },
      child: Container(
          padding: EdgeInsets.all(10.h),
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorsManger.minBlue,
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              'Get Started',
              style: CustomstextStyels.font24Withet700Wight,
            ),
          )));
}
