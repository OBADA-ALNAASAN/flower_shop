import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);
  postData(
    String email,
    String password,
    String passwordConfirmation,
    String phoneNumber,
    String userName,
  ) async {
    var response = await crud.postData(AppLinks.signUp, {
      "email": email,
      "password": password,
      "user_name": userName,
      "profile_photo": '',
      "certificate": '',
      "phone_number": phoneNumber,
      "password_confirmation": passwordConfirmation,
    });
    print(response.toString());
    return response.fold((l) => l, (r) => r);
  }
}
