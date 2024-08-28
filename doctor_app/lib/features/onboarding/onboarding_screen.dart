import 'package:doctor_app/core/theming/styels.dart';
import 'package:doctor_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctor_app/features/onboarding/widgets/started_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/DoctorImageAndText.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
        child: Column(
          children: [
            DocLogoAndNamae(32),
            DoctorImageAndText(context),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with\n Docdoc to get a new experience.',
                    style: CustomstextStyels.font13RegularGray,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  getstartedBottom(context),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
