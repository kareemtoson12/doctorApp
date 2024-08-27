import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget DoctorImageAndText(BuildContext context) {
  return Stack(
    children: [
      SvgPicture.asset('assets/svg/opictyLogo.svg'),
      Container(
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
        bottom: 30,
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
