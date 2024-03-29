import 'package:login_ui_aicycle_seta/common/common_request_options.dart';
import 'package:login_ui_aicycle_seta/common/common_response.dart';

abstract class RestfulModule {
  Future<String?> get authToken;

  Future<void> saveAuthToken(String authToken);

  Future<void> removeAuthToken();

  Future<CommonResponse<T>> get<T>(
    String uri, {
    Map<String, dynamic>? query,
    CommonRequestOptions? options,
  });

  Future<CommonResponse<T>> post<T>(
    String uri,
    data, {
    Map<String, dynamic>? query,
    CommonRequestOptions? options,
  });

  Future<CommonResponse<T>> put<T>(
    String uri, {
    data,
    Map<String, dynamic>? query,
    CommonRequestOptions? options,
  });

  Future<CommonResponse<T>> delete<T>(
    String uri, {
    data,
    Map<String, dynamic>? query,
    CommonRequestOptions? options,
  });
  Future<CommonResponse<T>> patch<T>(
    String uri,
    data, {
    Map<String, dynamic>? query,
    CommonRequestOptions? options,
  });
}
