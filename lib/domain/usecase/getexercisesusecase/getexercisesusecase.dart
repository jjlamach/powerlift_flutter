import 'package:power_lift/data/exerciseDto/exercise_dto.dart';
import 'package:power_lift/domain/usecase/use_case.dart';

class GetExercisesUseCase extends UseCase {
  GetExercisesUseCase(super.api);

  Future<List<ExerciseDto>> getExercises() async {
    return await api.exercises();
  }
}
