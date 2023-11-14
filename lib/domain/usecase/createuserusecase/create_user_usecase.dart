import 'package:power_lift/data/createUserDto/create_user.dart';
import 'package:power_lift/domain/usecase/use_case.dart';

class CreateUserUseCase extends UseCase {
  CreateUserUseCase(super.api);

  Future<int> createUser(CreateUser newUser) async {
    return await api.createUser(newUser);
  }
}
