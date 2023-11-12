import 'package:power_lift/main.dart';
import 'package:power_lift/models/createUserDto/create_user.dart';
import 'package:power_lift/models/exerciseDto/category_dto.dart';
import 'package:power_lift/models/exerciseDto/exercise_dto.dart';
import 'package:power_lift/models/loginDto/login_dto.dart';
import 'package:power_lift/models/userResponseDto/user_response.dart';
import 'package:power_lift/repository/power_lift_api.dart';

class PowerLiftApiImpl implements PowerLiftApi {
  final PowerLiftApi _api;

  PowerLiftApiImpl(this._api);

  @override
  Future<int> createUser(CreateUser newUser) async {
    try {
      final userId = await _api.createUser(newUser);
      return userId;
    } on Exception catch (e) {
      kLogger.e('Error while creating user: $e');
      rethrow;
    }
  }

  @override
  Future<UserResponse> login(LoginDto dto) async {
    try {
      final user = await _api.login(dto);
      return user;
    } on Exception catch (e) {
      kLogger.e('Could not log-in. $e');
      rethrow;
    }
  }

  @override
  Future<List<CategoryDto>> categories() async {
    try {
      List<CategoryDto> result = await _api.categories();
      return result;
    } on Exception catch (e) {
      kLogger.e('Could not get categories. $e');
      rethrow;
    }
  }

  @override
  Future<List<ExerciseDto>> exercises() async {
    try {
      List<ExerciseDto> result = await _api.exercises();
      return result;
    } on Exception catch (e) {
      kLogger.e('Could not get exercises for the categories. $e');
      rethrow;
    }
  }

  @override
  Future<int> deleteAccount() async {
    try {
      return await _api.deleteAccount();
    } on Exception catch (e) {
      kLogger.e('Could not delete account. $e');
      rethrow;
    }
  }
}
