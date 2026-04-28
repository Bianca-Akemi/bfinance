// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart';
import 'package:s_mobills/core/local/key_value_storage_service.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.storage}) : super();

  final KeyValueStorageService storage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra.containsKey('requiresAuthToken')) {
      if (options.extra['requiresAuthToken'] == true) {
        final token = await storage.getAuthToken();
        options.headers.addAll(
          <String, Object?>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        );
      }

      options.extra.remove('requiresAuthToken');
    }
    return handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    final statusCode = response.statusCode ?? 0;
    final isSuccessStatus = statusCode >= 200 && statusCode < 300;

    if (isSuccessStatus) return handler.next(response);

    return handler.reject(
      DioError(
        requestOptions: response.requestOptions,
        response: response,
      ),
    );
  }
}
