import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postData(String email,String  password) async {
    var response = await crud.postData(AppLinks.login, {
      'identifier':email,
      'password':password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
