import 'package:power_lift/data/exerciseDto/category_dto.dart';
import 'package:power_lift/domain/usecase/use_case.dart';

class GetCategoriesUseCase extends UseCase {
  GetCategoriesUseCase(super.api);

  Future<List<CategoryDto>> getCategories() async {
    return await api.categories();
  }
}
