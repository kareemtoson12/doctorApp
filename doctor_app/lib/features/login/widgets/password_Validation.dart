import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styels.dart';
class PasswordValidation extends StatelessWidget {
  final bool hasLoweCase;
  final bool hasUpperCase;
  final bool hasSpecialChracter;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation({super.key, required this.hasLoweCase, required this.hasUpperCase, required this.hasSpecialChracter, required this.hasNumber, required this.hasMinLength});



  @override
  Widget build(BuildContext context) {
    return Column(children: [buildValidationRow(' At Least 1 loweCase',hasLoweCase),buildValidationRow(' At Least 1 Uppercase',hasUpperCase),buildValidationRow(' At Least Min Length',hasMinLength),buildValidationRow(' At Least 1 Number',hasNumber),buildValidationRow(' At Least 1 Special chracter',hasSpecialChracter)],);
  }

  buildValidationRow(String text, bool hasvalidated)
  {
    return Row(children: [const CircleAvatar(radius: 2.5,backgroundColor: ColorsManger.gray,
    
    )
    ,horizontalSpace(6),Text(text,style: CustomstextStyels.font14DarkBlueMeduim.copyWith(decoration: hasvalidated?TextDecoration.lineThrough:null,decorationColor: ColorsManger.green,decorationThickness: 2,color: hasvalidated?ColorsManger.gray:ColorsManger.darkBlue),),],);
  }
}
