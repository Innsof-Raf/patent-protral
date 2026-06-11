import 'package:dio/dio.dart';

class ApiAgent {
  final Dio _dio;

  ApiAgent(this._dio);

  Future<Response<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    String? token,
    ResponseType? responseType,
  }) {
    return _dio.get<T>(
      url,
      queryParameters: queryParameters,
      options: _options(token: token, responseType: responseType),
    );
  }

  Future<Response<T>> post<T>({
    required String url,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) {
    final isFormData = body is FormData;
    return _dio.post<T>(
      url,
      data: body,
      queryParameters: queryParameters,
      options: _options(token: token, isFormData: isFormData),
    );
  }

  Options _options({
    String? token,
    bool isFormData = false,
    ResponseType? responseType,
  }) {
    return Options(
      contentType: isFormData ? 'multipart/form-data' : 'application/json',
      responseType: responseType,
      headers: {
        if (isFormData) 'Accept': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );
  }
}
