import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  @lazySingleton
  Dio get dio {
    Dio _dio = Dio(
      BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
        baseUrl: dotenv.env['API_URL'] ?? "",
        validateStatus: (status) {
          return status! < 400;
        },
      ),
    );
    _dio.interceptors.add(PrettyDioLogger());
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onResponse: _onResponse,
        onError: _onError,
      ),
    );
    return _dio;
  }

  void _onRequest(options, handler) async {
    dio.lock();
    String? apiKey = dotenv.env['API_KEY'];
    options.queryParameters['apiKey'] = apiKey;
    options.headers['Content-Type'] = 'application/json';
    handler.next(options);
  }

  void _onResponse(response, handler) {
    handler.next(response);
  }

  void _onError(error, handler) {
    handler.next(error);
  }
}
