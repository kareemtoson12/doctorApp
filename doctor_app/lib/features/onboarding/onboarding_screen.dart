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
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            DocLogoAndNamae(),
            SizedBox(
              height: 30.h,
            ),
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
                    height: 30.h,
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
