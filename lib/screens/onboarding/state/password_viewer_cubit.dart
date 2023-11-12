import 'package:bloc/bloc.dart';

class PasswordViewerCubit extends Cubit<bool> {
  PasswordViewerCubit() : super(false);

  void showPassword(bool value) {
    emit(value);
  }
}
