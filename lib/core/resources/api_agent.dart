import 'package:dio/dio.dart';
import 'package:patient_portal/core/error/exceptions.dart';

class ApiAgent {
  final Dio _dio;

  ApiAgent(this._dio);

  Future<Response<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    String? token,
    ResponseType? responseType,
  }) async {
    try {
      return await _dio.get<T>(
        url,
        queryParameters: queryParameters,
        options: _options(token: token, responseType: responseType),
      );
    } on DioException catch (e) {
      throw ServerException(_handleDioError(e));
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  Future<Response<T>> post<T>({
    required String url,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    try {
      final isFormData = body is FormData;
      return await _dio.post<T>(
        url,
        data: body,
        queryParameters: queryParameters,
        options: _options(token: token, isFormData: isFormData),
      );
    } on DioException catch (e) {
      throw ServerException(_handleDioError(e));
    } catch (e) {
      throw ServerException(e.toString());
    }
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

  String _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout';
      case DioExceptionType.badResponse:
        final data = error.response?.data;
        if (data is Map && data.containsKey('message')) {
          return data['message'];
        }
        return 'Server error: ${error.response?.statusCode}';
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.connectionError:
        return 'No internet connection';
      default:
        return 'Something went wrong';
    }
  }
}
