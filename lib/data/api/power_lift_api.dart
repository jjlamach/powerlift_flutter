import 'package:dio/dio.dart';
import 'package:power_lift/data/createUserDto/create_user.dart';
import 'package:power_lift/data/exerciseDto/category_dto.dart';
import 'package:power_lift/data/exerciseDto/exercise_dto.dart';
import 'package:power_lift/data/loginDto/login_dto.dart';
import 'package:power_lift/data/userResponseDto/user_response.dart';
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

  @POST('/deleteAccount')
  Future<int> deleteAccount();
}
