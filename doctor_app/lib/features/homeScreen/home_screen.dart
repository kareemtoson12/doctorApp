import 'package:doctor_app/core/theming/styels.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_blue_continer.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_list_view.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_specialty_see_all.dart';
import 'package:doctor_app/features/homeScreen/widgets/doctor_specilaity_list_view.dart';
import 'package:doctor_app/features/homeScreen/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(10),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
