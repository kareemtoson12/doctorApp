import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget DoctorImageAndText(BuildContext context) {
  return Stack(
    children: [
      Container(
          height: 400.h, child: SvgPicture.asset('assets/svg/opictyLogo.svg')),
      Container(
        width: 400.w,
        height: 400.h,
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: AlignmentDirectional.topCenter,
              stops: const [0.14, 0.4]),
        ),
        child: Image.asset('assets/images/onboarding_doctor.png'),
      ),
      Positioned(
        bottom: 1,
        right: 0,
        left: 0,
        child: Text(
          'Best Doctor\n Appointment App',
          style: CustomstextStyels.font32BlueBold,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
