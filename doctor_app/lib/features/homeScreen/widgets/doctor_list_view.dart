import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 150.h,
            margin: EdgeInsets.only(bottom: 16.h, top: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(515),
                  child: Image.asset(
                    'assets/images/doctorWomen.png',
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'name',
                      style: CustomstextStyels.font24BlueBold,
                    ),
                    Text(
                      'Degree | 616510',
                      style: CustomstextStyels.font18DarkBlue,
                    ),
                    Text(
                      'email',
                      style: CustomstextStyels.font14RegularGray,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
