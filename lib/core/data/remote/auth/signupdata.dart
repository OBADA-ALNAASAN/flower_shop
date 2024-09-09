import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);
  postData(String email,String password,String passwordConfirmation,String phoneNumber,String userName,) async {
    var response = await crud.postData(AppLinks.signUp, {
      "email":email,
      "password":password,
      "password_confirmation":passwordConfirmation,
      "phone_number":phoneNumber,
      "user_name":userName,
    });
    return response.fold((l) => l, (r) => r);
  }
}
