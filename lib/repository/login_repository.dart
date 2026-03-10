import 'package:loginapi_pekan5/models/login_request_model.dart';
import 'package:loginapi_pekan5/models/login_response_model.dart';
import 'package:loginapi_pekan5/services/api_services.dart';
import 'package:fpdart/fpdart.dart';

class LoginRepository {
  final apiService = ApiServices();

  Future<Either<String, LoginResponseModel>> login(
    LoginRequestModel requestBody,
  ) async {
    try {
      final result = await apiService.login(requestBody);
      return Right(result);
    } catch (e) {
      return Left('Login Gagal');
    }
  }
}
