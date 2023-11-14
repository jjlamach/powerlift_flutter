import 'package:bloc/bloc.dart';
import 'package:power_lift/domain/usecase/deleteuserusecase/delete_user_usecase.dart';

class DeleteUserCubit extends Cubit<bool> {
  final DeleteUserUseCase _deleteUserUseCase;

  DeleteUserCubit(this._deleteUserUseCase) : super(false);

  void deleteUser() async {
    final result = await _deleteUserUseCase.deleteUser();
    if (result >= 0) {
      emit(true);
    } else {
      emit(false);
    }
  }
}
