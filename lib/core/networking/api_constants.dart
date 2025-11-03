import 'package:donation_app/core/helpers/app_strings.dart';

class ApiConstants {
  static const String baseUrl ="";

}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = AppStrings.noInternetPleaseTryAgain;
  static const String defaultError = AppStrings.noInternetPleaseTryAgain;
  static const String cacheError = "cacheError";
  static const String noInternetError = AppStrings.noInternetPleaseTryAgain;
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}