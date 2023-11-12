import 'package:bloc/bloc.dart';
import 'package:power_lift/models/exerciseDto/category_dto.dart';
import 'package:power_lift/models/exerciseDto/exercise_dto.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';

class ExercisesCubit extends Cubit<List<(CategoryDto, ExerciseDto)>> {
  final PowerLiftApiImpl _repository;

  ExercisesCubit(this._repository) : super([]);

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
    final categories = await _repository.categories();
    final exercises = await _repository.exercises();
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
