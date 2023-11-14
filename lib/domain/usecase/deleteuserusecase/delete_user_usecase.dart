import 'package:power_lift/domain/usecase/use_case.dart';

class DeleteUserUseCase extends UseCase {
  DeleteUserUseCase(super.api);

  Future<int> deleteUser() async {
    return await api.deleteAccount();
  }
}
