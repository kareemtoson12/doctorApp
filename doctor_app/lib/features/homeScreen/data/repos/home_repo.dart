import 'package:doctor_app/core/networking/api_results.dart';
import 'package:doctor_app/features/homeScreen/data/apis/home_api_services.dart';
import 'package:doctor_app/features/homeScreen/data/models/specializations_respons_model.dart';

import '../../../../core/networking/error_handler.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
