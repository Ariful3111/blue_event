import 'package:blue_event/data/networks/post_with_response.dart';
import 'package:blue_event/features/auth/model/register_model.dart';
import 'package:fpdart/fpdart.dart';

class RegisterRepository {
  final PostWithResponse postWithResponse;
  const RegisterRepository({required this.postWithResponse});
  Future<Either<String, RegisterModel>> execute({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await postWithResponse.postData<RegisterModel>(
      url: "/api/register",
      body: {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "password_confirmation": confirmPassword,
      },
      fromJson: (json) => RegisterModel.fromJson(json),
    );
    return response;
  }
}
