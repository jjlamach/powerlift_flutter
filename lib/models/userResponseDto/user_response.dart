import 'package:json_annotation/json_annotation.dart';
import 'package:power_lift/models/userDto/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.g.dart';
part 'user_response.freezed.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required String access_token,
    required User user,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
