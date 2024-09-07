import 'package:dio/dio.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_request_body.dart';
import 'constants.dart';
part 'services_api.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ServicesApi
{
  factory ServicesApi(Dio dio,{String baseUrl})=_ServicesApi;
  @POST(ApiConstants.login)
Future<LoginResponse>login(@Body() LoginRequestBody loginRequestBody);

}
