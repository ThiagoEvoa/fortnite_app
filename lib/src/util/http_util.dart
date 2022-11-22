// coverage:ignore-file

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final Provider<Dio> dioProvider = Provider(
  (ref) {
    final Dio dio = Dio(
      BaseOptions(baseUrl: 'http://192.168.1.74:8080/'),
    );
    dio.interceptors
        .add(PrettyDioLogger(requestHeader: true, requestBody: true));
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, requestInterceptorHandler) {
          options.headers = {
            'Content-Type': Headers.jsonContentType,
          };
          requestInterceptorHandler.next(options);
        },
        onResponse: (response, requestInterceptorHandler) =>
            requestInterceptorHandler.next(response),
        onError: (error, requestInterceptorHandler) =>
            requestInterceptorHandler.next(error),
      ),
    );
    return dio;
  },
);
