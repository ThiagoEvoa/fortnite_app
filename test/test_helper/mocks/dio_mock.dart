import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class DioMock {
  DioMock._();

  static late DioAdapter dioAdapter;
  static late Provider<Dio> dioProviderMock;
  static Dio dio = Dio(BaseOptions(baseUrl: 'https://example.com/'));

  static Provider<Dio> createMock() {
    dioAdapter = DioAdapter(
      dio: dio,
      matcher: const FullHttpRequestMatcher(),
    );
    dio.httpClientAdapter = dioAdapter;
    return dioProviderMock = Provider(((ref) {
      return dio;
    }));
  }
}
