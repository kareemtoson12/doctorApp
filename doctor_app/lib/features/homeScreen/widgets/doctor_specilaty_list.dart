import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecilatyListView extends StatelessWidget {
  const DoctorSpecilatyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28.w,
                    child: SvgPicture.asset('assets/svg/doctorIcon.svg'),
                  ),
                  verticalSpace(8),
                  Text(
                    'General',
                    style: CustomstextStyels.fontSimiBold18Darkblack,
                  )
                ],
              ),
            );
          },
        ));
  }
}
