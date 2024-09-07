import 'package:doctor_app/core/networking/api_results.dart';
import 'package:doctor_app/core/networking/error_handler.dart';
import 'package:doctor_app/core/networking/services_api.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';

class LoginRepo {
  final ServicesApi servicesApi;
  LoginRepo({required this.servicesApi});
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await servicesApi.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (er) {
      return ApiResult.failure(
        ErrorHandler.handle(er),
      );
    }
  }
}
