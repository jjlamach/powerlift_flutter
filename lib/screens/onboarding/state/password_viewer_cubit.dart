import 'package:bloc/bloc.dart';
import 'package:power_lift/main.dart';

class PasswordViewerCubit extends Cubit<bool> {
  PasswordViewerCubit() : super(false);

  void showPassword(bool value) {
    emit(value);
  }

  @override
  void onChange(Change<bool> change) {
    // TODO: implement onChange
    super.onChange(change);
    kLogger.i('PasswordViewerCubit: $change');
  }
}
