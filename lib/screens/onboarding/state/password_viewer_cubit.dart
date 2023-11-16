import 'package:bloc/bloc.dart';
import 'package:power_lift/main.dart';

class PasswordViewerCubit extends Cubit<bool> {
  PasswordViewerCubit() : super(true); // hide password as default

  void hidePassword(bool value) {
    emit(value);
  }

  void reset() {
    emit(true);
  }

  @override
  void onChange(Change<bool> change) {
    super.onChange(change);
    kLogger.i('PasswordViewerCubit: $change');
  }
}
