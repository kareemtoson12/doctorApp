import 'package:doctor_app/core/helpers/extenstions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: CustomstextStyels.font13RegularGray,
          ),
          TextSpan(
            text: ' Login',
            style: CustomstextStyels.font14DarkBlueMeduim,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
