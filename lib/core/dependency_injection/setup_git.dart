import 'package:dio/dio.dart';
import 'package:donation_app/core/helpers/localization/local_cubit.dart';
import 'package:donation_app/core/networking/dio_factory.dart';
import 'package:donation_app/features/charity_app/cart/cubit/cart_cubit.dart';
import 'package:donation_app/features/charity_app/charity_onboard/cubit/charity_onboard_cubit.dart';
import 'package:donation_app/features/charity_app/donate_now/cubit/donate_now_cubit.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_cubit.dart';
import 'package:donation_app/features/charity_app/layout/cubit/layout_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment_option/payment_option_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/select_payment/select_payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/user_data/user_data_cubit.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_cubit.dart';
import 'package:donation_app/features/setup/cubit/setup_cubit/setup_cubit.dart';
import 'package:donation_app/features/splash/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  Dio dio = DioFactory.getDio();

  /// Cubits
  getIt.registerFactory<LocaleCubit>(() => LocaleCubit());
  getIt.registerFactory<SetupCubit>(() => SetupCubit());
  getIt.registerFactory<CheckDeviceCubit>(() => CheckDeviceCubit());

  getIt.registerFactory<CharityOnboardCubit>(() => CharityOnboardCubit());
  getIt.registerFactory<LayoutCubit>(() => LayoutCubit());
  getIt.registerFactory<HomeCubit>(() => HomeCubit());
  getIt.registerFactory<ProjectDetailsCubit>(() => ProjectDetailsCubit());
  getIt.registerFactory<DonateNowCubit>(() => DonateNowCubit());
  getIt.registerFactory<CartCubit>(() => CartCubit());
  getIt.registerFactory<UserDataCubit>(() => UserDataCubit());
  getIt.registerFactory<SelectPaymentCubit>(() => SelectPaymentCubit());
  getIt.registerFactory<PaymentOptionCubit>(() => PaymentOptionCubit());

  getIt.registerFactory<SplashCubit>(() => SplashCubit());

  /// Repos
  // getIt.registerSingleton<LoginRepo>(LoginRepo(ApiService(dio)));
}
