import 'package:doctor_app/core/helpers/extenstions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: CustomstextStyels.font13RegularGray,
          ),
          TextSpan(
            text: ' Sign Up',
            style: CustomstextStyels.font15regularblue,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.SignUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
