import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String message;

  ApiErrorModel({required this.message});

  factory ApiErrorModel.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return ApiErrorModel(
        message: json['message'] ??
            json['errors'] ??
            json.values.firstWhere((v) => v is String, orElse: () => 'Unknown error'),
      );
    } else if (json is String) {
      return ApiErrorModel(message: json);
    } else {
      return ApiErrorModel(message: 'Unknown error');
    }
  }

}
