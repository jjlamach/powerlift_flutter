import 'package:bloc/bloc.dart';
import 'package:power_lift/models/exerciseDto/category_dto.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';

class CategoryCubit extends Cubit<List<CategoryDto>> {
  final PowerLiftApiImpl _repository;
  CategoryCubit(this._repository) : super([]);

  void getCategories() async {
    final result = await _repository.getCategories();
    if (result.isNotEmpty) {
      emit(result);
    } else {
      emit([]);
    }
  }
}
