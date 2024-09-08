import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/widgets/Email_And_Password.dart';
import 'package:doctor_app/features/login/widgets/dont_have_account_text.dart';
import 'package:doctor_app/features/login/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(15),
                Text(
                  'Welcome Back',
                  style: CustomstextStyels.font24BlueBold,
                ),
                verticalSpace(7),
                Text(
                  "We're excited to have you back, can't wait\n to see what you've been up to since you last logged in.",
                  style: CustomstextStyels.font13RegularGray,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),

                    verticalSpace(5),
                    Padding(
                      padding: EdgeInsets.all(8.0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [],
                          ),
                          Text(
                            'Forget Password',
                            style: CustomstextStyels.font15regularblue,
                          )
                        ],
                      ),
                    ),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: CustomstextStyels.font14lightGray,
                      onPressed: () {},
                    ),
                    verticalSpace(70),
                    const TermsAndConditionsText(),
                    verticalSpace(20),
                    const DontHaveAccountText(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
