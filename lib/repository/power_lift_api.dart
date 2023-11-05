import 'package:dio/dio.dart';
import 'package:power_lift/models/createUserDto/create_user.dart';
import 'package:power_lift/models/exerciseDto/category_dto.dart';
import 'package:power_lift/models/exerciseDto/exercise_dto.dart';
import 'package:power_lift/models/loginDto/login_dto.dart';
import 'package:power_lift/models/userResponseDto/user_response.dart';
import 'package:retrofit/retrofit.dart';

part 'power_lift_api.g.dart';

@RestApi(baseUrl: 'https://powerlift.thundersoftapi.com/')
abstract class PowerLiftApi {
  factory PowerLiftApi(Dio dio, {String baseUrl}) = _PowerLiftApi;

  @POST('/users')
  Future<int> createUser(@Body() CreateUser newUser);

  @POST('/users/login')
  Future<UserResponse> login(@Body() LoginDto loginDto);

  @GET('/getExerciseCategory')
  Future<List<CategoryDto>> categories();

  @GET('/getExerciseType')
  Future<List<ExerciseDto>> exercises();
}
