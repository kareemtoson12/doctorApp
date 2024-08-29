import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styels.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget AppTextFormFaild(
    {InputBorder? focusedBorder,
    InputBorder? enabledBorder,
    TextStyle? inputTextStyle,
    Color? backgroundColor,
    TextStyle? hintStyle,
    required String hintText,
    required TextEditingController vallue,
    bool? isObscureText,
    Widget? suffixIcon,
    double? contentPadding}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    child: TextFormField(
      controller: vallue,
      obscureText: isObscureText ?? false,
      style: CustomstextStyels.font14DarkBlueMeduim,
      decoration: InputDecoration(
          fillColor: backgroundColor ?? ColorsManger.triblelLighteray,
          filled: true,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle ?? CustomstextStyels.font13RegularGray,
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorsManger.minBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsManger.lightergray,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16)),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentPadding ?? 20.w,
              vertical: contentPadding ?? 18.h)),
    ),
  );
}
