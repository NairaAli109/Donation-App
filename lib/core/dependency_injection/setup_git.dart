import 'package:dio/dio.dart';
import 'package:donation_app/core/helpers/localization/local_cubit.dart';
import 'package:donation_app/core/networking/dio_factory.dart';
import 'package:donation_app/features/splash/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  Dio dio = DioFactory.getDio();

  /// Cubits
  getIt.registerFactory<LocaleCubit>(() => LocaleCubit());
  getIt.registerFactory<SplashCubit>(() => SplashCubit());

  /// Repos
  // getIt.registerSingleton<LoginRepo>(LoginRepo(ApiService(dio)));
}
