import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/shared_pref_helpers.dart';
import 'package:doctor_app/core/networking/dio_refactory.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/cupertino.dart';

import '../../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.initial());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));

    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
      emit(
        LoginState.success(loginResponse),
      );
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
