import 'package:freezed_annotation/freezed_annotation.dart';

//        "Id": 1,
//         "username": "micah",
//         "full_name": "Micah Kimel",
//         "email": "email@email.com",
//         "password_changed_at": "2023-10-11T16:48:28Z",
//         "created_at": "2023-10-11T16:48:28Z"
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    String? full_name,
    required String email,
    required String password_changed_at,
    required String created_at,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
