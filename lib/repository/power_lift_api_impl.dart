import 'package:power_lift/main.dart';
import 'package:power_lift/models/createUser/create_user.dart';
import 'package:power_lift/models/login_dto.dart';
import 'package:power_lift/models/userResponse/user_response.dart';
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
