import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/constants.dart';
import 'package:doctor_app/features/homeScreen/data/apis/constants.dart';
import 'package:doctor_app/features/homeScreen/data/models/specializations_respons_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}
