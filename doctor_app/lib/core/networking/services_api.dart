import 'package:dio/dio.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';
import 'package:doctor_app/features/sigUp/data/models/signUp_request_body.dart';
import 'package:doctor_app/features/sigUp/data/models/signUp_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_request_body.dart';
import 'constants.dart';
part 'services_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ServicesApi {
  factory ServicesApi(Dio dio, {String baseUrl}) = _ServicesApi;
  //Login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  //SignUp
  @POST(ApiConstants.signup)
  Future<SignupResponse> signUp(@Body() SignupRequestBody signUpRequestBody);
}
