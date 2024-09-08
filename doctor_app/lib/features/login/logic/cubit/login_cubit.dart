import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/cupertino.dart';

import '../../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo  _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void emitLoginState( LoginRequestBody  loginRequestBody ) async{
    emit(const LoginState.initial());
    final response=await  _loginRepo.login(loginRequestBody);
    response.when(success: ( loginResponse ){emit(LoginState.success(loginResponse),);}, failure:(error) {emit(LoginState.error(error: error.apiErrorModel.message?? ''));});
  }
}
