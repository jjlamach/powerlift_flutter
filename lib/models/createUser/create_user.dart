import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user.freezed.dart';
part 'create_user.g.dart';

//{
//     "Username": "micahh",
//     "Password": "123456789100",
//     "full_name": "Micah Kimell",
//     "Email": "email2@email.com"
// }
@freezed
class CreateUser with _$CreateUser {
  const factory CreateUser({
    required String Username,
    required String Password,
    String? full_name,
    required String Email,
  }) = _CreateUser;

  factory CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFromJson(json);
}
