import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:getx_template/app/core/utils/api/api_keys.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

class DioHandler {
  static final DioHandler _instance = DioHandler._internal();
  late Dio _dio;

  factory DioHandler() {
    return _instance;
  }

  DioHandler._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.addAll([
      TalkerDioLogger(
        
      ),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // You can add authentication tokens here automatically
          // options.headers["Authorization"] = "Bearer YOUR_TOKEN";
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Handle responses globally if needed
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          // Handle errors globally
          log('Dio error: ${e.message}');
          return handler.next(e);
        },
      ),
    ]);
  }

  static String _baseUrl = ApiKeys.baseUrl;

  static void setBaseUrl(String url) {
    _baseUrl = url;
    _instance._dio.options.baseUrl = url;
  }

  Dio get client => _dio;

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.post(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.put(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }
}
