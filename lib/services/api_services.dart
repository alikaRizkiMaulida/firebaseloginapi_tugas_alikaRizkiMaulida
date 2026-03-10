import 'package:dio/dio.dart';
import 'package:loginapi_pekan5/constants/app_constans.dart';
import 'package:loginapi_pekan5/models/login_request_model.dart';
import 'package:loginapi_pekan5/models/login_response_model.dart';

class ApiServices {
  final baseURL = AppConstans.baseURL;
  final dio = Dio();

  Future<LoginResponseModel> login(LoginRequestModel request) async {
    final response = await dio.post(
      '$baseURL/auth/login',
      data: request.toJson(),
    );
    return LoginResponseModel.fromJson(response.data);
  }
}
