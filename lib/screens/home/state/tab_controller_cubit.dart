import 'package:bloc/bloc.dart';
import 'package:power_lift/main.dart';

class TabControllerCubit extends Cubit<int> {
  TabControllerCubit() : super(0);

  void currentIndex(int index) {
    emit(index);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    kLogger.i(change);
  }
}
