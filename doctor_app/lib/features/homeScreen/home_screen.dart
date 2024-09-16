import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_Blue_Continer.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_list_view.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_specality_Text.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_specialty_see_all.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_specilaty_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_Top_Bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManger.triblelLighteray,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeTopBar(),
                    const DoctorBlueContiner(),
                    verticalSpace(16),
                    const DoctorSpecialtySeeAll(),
                    verticalSpace(18),
                    const DoctorSpecilatyListView(),
                    verticalSpace(18),
                    //const DoctorSpecalityText(),
                    const DoctorListView(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
