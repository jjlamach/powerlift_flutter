import 'package:bloc/bloc.dart';
import 'package:power_lift/data/exerciseDto/category_dto.dart';
import 'package:power_lift/domain/usecase/getcategoriesusecase/get_categories_use_case.dart';
import 'package:power_lift/main.dart';

class CategoryCubit extends Cubit<List<CategoryDto>> {
  final GetCategoriesUseCase _getCategoriesUseCase;

  CategoryCubit(this._getCategoriesUseCase) : super([]);

  void getCategories() async {
    final result = await _getCategoriesUseCase.getCategories();
    if (result.isNotEmpty) {
      emit(result);
    } else {
      emit([]);
    }
  }

  @override
  void onChange(Change<List<CategoryDto>> change) {
    super.onChange(change);
    kLogger.i(change);
  }
}
