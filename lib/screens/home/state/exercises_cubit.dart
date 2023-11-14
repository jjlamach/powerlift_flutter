import 'package:bloc/bloc.dart';
import 'package:power_lift/data/exerciseDto/category_dto.dart';
import 'package:power_lift/data/exerciseDto/exercise_dto.dart';
import 'package:power_lift/domain/usecase/getcategoriesusecase/get_categories_use_case.dart';
import 'package:power_lift/domain/usecase/getexercisesusecase/getexercisesusecase.dart';

class ExercisesCubit extends Cubit<List<(CategoryDto, ExerciseDto)>> {
  final GetExercisesUseCase _getExercisesUseCase;
  final GetCategoriesUseCase _getCategoriesUseCase;

  ExercisesCubit(this._getExercisesUseCase, this._getCategoriesUseCase)
      : super([]);

  void getExercise(int exerciseId) async {
    try {
      final allWorkouts = await _createWorkouts();
      final searchResult = allWorkouts
          .where((element) => element.$2.categoryid?.int32 == exerciseId);
      final List<(CategoryDto, ExerciseDto)> result = searchResult.toList();
      emit(result);
    } on Exception catch (e) {
      emit([]);
    }
  }

  Future<List<(CategoryDto, ExerciseDto)>> _createWorkouts() async {
    (CategoryDto, ExerciseDto) record;
    List<(CategoryDto, ExerciseDto)> records = [];
    final categories = await _getCategoriesUseCase.getCategories();
    final exercises = await _getExercisesUseCase.getExercises();
    for (var element in categories) {
      for (var exercise in exercises) {
        if (element.ID == exercise.categoryid?.int32) {
          record = (element, exercise);
          if (!records.contains(record)) {
            records.add(record);
          }
        }
      }
    }
    return records;
  }
}
