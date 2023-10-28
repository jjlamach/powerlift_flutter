import 'package:power_lift/main.dart';
import 'package:power_lift/models/createUserDto/create_user.dart';
import 'package:power_lift/models/loginDto/login_dto.dart';
import 'package:power_lift/models/userResponseDto/user_response.dart';
import 'package:power_lift/repository/power_lift_api.dart';

class PowerLiftApiImpl {
  final PowerLiftApi _api;

  PowerLiftApiImpl(this._api);

  Future<int> createUser(CreateUser newUser) async {
    try {
      final userId = await _api.createUser(newUser);
      return userId;
    } on Exception catch (e) {
      kLogger.e('Error while creating user: $e');
      rethrow;
    }
  }

  Future<UserResponse> login(String username, String password) async {
    try {
      LoginDto loginDto = LoginDto(Username: username, Password: password);
      final user = await _api.login(loginDto);
      return user;
    } on Exception catch (e) {
      kLogger.e('Could not log-in. $e');
      rethrow;
    }
  }
}
