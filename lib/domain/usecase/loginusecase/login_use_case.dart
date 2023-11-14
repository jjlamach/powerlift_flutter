import 'package:power_lift/data/loginDto/login_dto.dart';
import 'package:power_lift/data/userResponseDto/user_response.dart';
import 'package:power_lift/domain/usecase/use_case.dart';

class LoginUseCase extends UseCase {
  LoginUseCase(super.api);

  Future<UserResponse> logIn(LoginDto dto) async {
    return await api.login(dto);
  }
}
