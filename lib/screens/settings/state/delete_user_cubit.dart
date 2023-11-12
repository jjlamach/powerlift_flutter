import 'package:bloc/bloc.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';

class DeleteUserCubit extends Cubit<bool> {
  final PowerLiftApiImpl apiImp;

  DeleteUserCubit(this.apiImp) : super(false);

  void deleteUser() async {
    final result = await apiImp.deleteAccount();
    if (result >= 0) {
      emit(true);
    } else {
      emit(false);
    }
  }
}
