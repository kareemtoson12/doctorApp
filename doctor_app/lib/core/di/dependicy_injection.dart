import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/dio_refactory.dart';
import 'package:doctor_app/core/networking/services_api.dart';

import 'package:doctor_app/features/login/data/repo/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/sigUp/data/repo/signUp_repo.dart';
import 'package:doctor_app/features/sigUp/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setUpGetIt() async {
  //Dio
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ServicesApi>(() => ServicesApi(dio));
  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(servicesApi: getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));
  //sign up
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));
  //home
/*   getit.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getit.registerLazySingleton<HomeRepo>(
      () => HomeRepo(homeApiServices: getit()));
  getit.registerFactory<HomeCubit>(() => HomeCubit(getit())); */
}
