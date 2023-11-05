import 'package:bloc/bloc.dart';
import 'package:power_lift/models/exerciseDto/exercise_dto.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';

class ExercisesCubit extends Cubit<List<ExerciseDto>> {
  final PowerLiftApiImpl _repository;

  ExercisesCubit(this._repository) : super([]);

  void getExercises() async {
    try {
      final result = await _repository.getExercisesByCategories();
      emit(result);
    } on Exception catch (e) {
      emit([]);
    }
  }
}
