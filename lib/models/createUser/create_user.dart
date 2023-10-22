import 'package:json_annotation/json_annotation.dart';

part 'create_user.g.dart';

@JsonSerializable()
class CreateUser {
  final String Username;
  final String Password;
  final String full_name;
  final String Email;

  CreateUser(this.Username, this.Password, this.full_name, this.Email);

  factory CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserToJson(this);
}
