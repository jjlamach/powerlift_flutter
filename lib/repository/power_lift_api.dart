import 'package:dio/dio.dart';
import 'package:power_lift/models/createUserDto/create_user.dart';
import 'package:power_lift/models/loginDto/login_dto.dart';
import 'package:power_lift/models/userResponseDto/user_response.dart';
import 'package:retrofit/retrofit.dart';

part 'power_lift_api.g.dart';

@RestApi(baseUrl: 'http://54.242.228.5:8080/')
abstract class PowerLiftApi {
  factory PowerLiftApi(Dio dio, {String baseUrl}) = _PowerLiftApi;

  @POST('/users')
  Future<int> createUser(@Body() CreateUser newUser);

  @POST('/users/login')
  Future<UserResponse> login(@Body() LoginDto loginDto);
}
