import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:doctor_app/features/homeScreen/data/models/specializations_respons_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem(
      {super.key, this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            child: SvgPicture.asset(
              'assets/svg/doctorIcon.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: CustomstextStyels.font14DarkBlueMeduim,
          ),
        ],
      ),
    );
  }
}
