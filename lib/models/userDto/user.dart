import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int Id;
  final String username;
  final String full_name;
  final String email;
  final String password_changed_at;
  final String created_at;
  User({
    required this.Id,
    required this.username,
    required this.full_name,
    required this.email,
    required this.password_changed_at,
    required this.created_at,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
