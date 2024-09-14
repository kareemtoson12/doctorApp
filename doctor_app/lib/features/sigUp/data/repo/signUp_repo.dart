import 'package:doctor_app/core/networking/api_results.dart';
import 'package:doctor_app/core/networking/error_handler.dart';
import 'package:doctor_app/core/networking/services_api.dart';
import 'package:doctor_app/features/sigUp/data/models/signUp_request_body.dart';
import 'package:doctor_app/features/sigUp/data/models/signUp_response.dart';

class SignupRepo {
  final ServicesApi _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
