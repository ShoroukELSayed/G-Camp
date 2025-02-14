import 'package:dio/dio.dart';
import 'package:healthy_food_app/core/services/login_request.dart';
import 'package:healthy_food_app/core/services/register_request.dart';

class ApiServices {
  static const String _baseUrl = 'https://orientonline.info/api';

  // Dio instance
  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  Future<String> registerUser(RegisterRequest registerRequest) async {
    try {
      final response = await _dio.post(
        'https://orientonline.info/api/register',
        data: registerRequest.toJson(),
      );
      return response.data['access_token'];
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  //login
  Future<String> loginUser(LoginRequest loginRequest) async {
    try {
      final response = await _dio.post(
        '$_baseUrl/login',
        data: loginRequest.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return response.data['token'];
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  
}
