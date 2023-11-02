import 'package:dio/dio.dart';
import 'package:power_lift/main.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    kLogger.i('TokenInterceptor running');
    super.onRequest(options, handler);
    final token = await storage.read(key: 'token');
    options.headers['Authorization'] = 'Bearer $token';
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
    if (err.response?.statusCode == 401) {
      kLogger.e('Token expired');
      await storage.delete(key: 'token');
      await storage.delete(key: 'username');
    }
  }
}
