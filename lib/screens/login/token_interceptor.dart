import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:power_lift/data/services/app_service.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/navigation/app_router.dart';

class TokenInterceptor extends Interceptor {
  final Box storage = Hive.box('appStorage');
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    kLogger.i('TokenInterceptor running');
    super.onRequest(options, handler);
    final token = storage.get('token');
    options.headers['Authorization'] = 'Bearer $token';
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
    if (err.response?.statusCode == 401) {
      kLogger.e('Error. Sign in again.');
      await storage.delete('token');
      await storage.delete('username');
      getIt<AppRouter>().replaceAll([
        const GetStartedRoute(),
      ]);
    }
  }
}
