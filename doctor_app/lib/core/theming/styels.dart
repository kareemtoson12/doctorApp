import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/font_wight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomstextStyels {
  static TextStyle font24black700Wight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle font24Withet700Wight = TextStyle(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.white);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManger.minBlue);
  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManger.minBlue);
  static TextStyle font15regularblue = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManger.minBlue);

  static TextStyle font13RegularGray = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.normal, color: ColorsManger.gray);

  static TextStyle font14RegularGray = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManger.gray);
  static TextStyle font14lightGray = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManger.lightergray);
  static TextStyle font14DarkBlueMeduim = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManger.darkBlue);
}
