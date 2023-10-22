import 'package:json_annotation/json_annotation.dart';
import 'package:power_lift/models/user/user.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final String access_token;
  final User user;
  UserResponse({
    required this.access_token,
    required this.user,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
