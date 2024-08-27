import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget DocLogoAndNamae() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SvgPicture.asset('assets/svg/docDocLogo.svg'),
      Padding(
        padding: EdgeInsets.all(8.h),
        child: Text(
          'Docdoc',
          style: CustomstextStyels.font24black700Wight,
        ),
      )
    ],
  );
}
