import 'package:dio/dio.dart';
import 'package:power_lift/models/createUser/create_user.dart';
import 'package:power_lift/models/login_dto.dart';
import 'package:power_lift/models/userResponse/user_response.dart';
import 'package:retrofit/retrofit.dart';

part 'power_lift_api.g.dart';

@RestApi(baseUrl: 'http://localhost:8080/')
abstract class PowerLiftApi {
  factory PowerLiftApi(Dio dio, {String baseUrl}) = _PowerLiftApi;

  @POST('/users')
  Future<int> createUser(@Body() CreateUser newUser);

  @POST('/users/login/')
  Future<UserResponse> login(@Body() LoginDto loginDto);
}
