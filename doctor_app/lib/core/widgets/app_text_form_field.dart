import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styels.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appTextFormFaild(
    {InputBorder? focusedBorder,
    InputBorder? enabledBorder,
    InputBorder? errorBorder,
    InputBorder? focusedErrorBorder,
    TextStyle? inputTextStyle,
    Color? backgroundColor,
    TextStyle? hintStyle,
    required String hintText,
    required TextEditingController controller,
    required Function(String?) validator,
    bool? isObscureText,
    Widget? suffixIcon,
    double? contentPadding}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    child: TextFormField(
      validator: (value) {
        return validator(value);
      },
      controller: controller,
      obscureText: isObscureText ?? false,
      style: CustomstextStyels.font14DarkBlueMeduim,
      decoration: InputDecoration(
          fillColor: backgroundColor ?? ColorsManger.triblelLighteray,
          filled: true,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle ?? CustomstextStyels.font13RegularGray,
          focusedErrorBorder: focusedErrorBorder ??
              OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorsManger.minBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          errorBorder: errorBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 83, 58, 58), width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
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
