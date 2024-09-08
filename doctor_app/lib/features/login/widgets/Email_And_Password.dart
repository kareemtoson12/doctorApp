import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/widgets/password_Validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool isObsecure = true;
  final bool hasLoweCase=false;
  final bool hasUpperCase=false;
  final bool hasSpecialChracter=false;
  final bool hasNumber=false;
  final bool hasMinLength=false;
 late TextEditingController passwordController ;
 @override
  void initState() {

    super.initState();
    passwordController=context.read<LoginCubit>().passwordController;
  }
  @override

  Widget build(BuildContext context) {
    return  Form(key: context.read<LoginCubit>().formkey,child: Column(children: [ AppTextFormFaild(
        hintText: 'Email', controller:context.read<LoginCubit>().emailController ,validator:(value){
          if(value==null||value.isEmpty)
            {
              return 'please eneter valid email';
            }
    } ),
      AppTextFormFaild(
        controller: context.read<LoginCubit>().passwordController,
        validator:(value){
    if(value==null||value.isEmpty)
    {
    return 'please eneter valid email';
    } },
        hintText: 'Password',

        isObscureText: isObsecure,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObsecure = !isObsecure;
            });
          },
          icon: Icon(
            isObsecure
                ? Icons.visibility_off
                : Icons.visibility,
            color: isObsecure
                ? ColorsManger.gray // Default color
                : ColorsManger
                .minBlue, // Change to blue when not obscure
          ),
        ),
      ),      verticalSpace(36),
      PasswordValidation(hasLoweCase:hasLoweCase ,hasMinLength:hasMinLength ,hasNumber: hasNumber,hasSpecialChracter:hasSpecialChracter ,hasUpperCase: hasUpperCase,),
    ],));
  }
}
