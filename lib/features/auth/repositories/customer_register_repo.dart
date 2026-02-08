import 'package:fpdart/fpdart.dart';
import 'package:zb_dezign/core/data/global_models/error_model.dart';
import 'package:zb_dezign/core/data/networks/post_with_response.dart';
import 'package:zb_dezign/features/auth/models/customer_register_model.dart';

class CustomerRegisterRepository {
  final PostWithResponse postWithResponse;

  const CustomerRegisterRepository({required this.postWithResponse});

  Future<Either<ErrorModel, CustomerRegisterModel>> execute({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await postWithResponse.postData<CustomerRegisterModel>(
      url: "/api/auth/customer/register",
      body: {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "password_confirmation": confirmPassword,
      },
      fromJson: (json) => CustomerRegisterModel.fromJson(json),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    return response;
  }
}
