import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: CustomstextStyels.font13RegularGray,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: CustomstextStyels.font14DarkBlueMeduim,
          ),
          TextSpan(
            text: ' and',
            style: CustomstextStyels.font13RegularGray.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: CustomstextStyels.font14DarkBlueMeduim,
          ),
        ],
      ),
    );
  }
}
