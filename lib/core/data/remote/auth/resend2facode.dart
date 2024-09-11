import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Resend2facodeData {
  Crud crud;
  Resend2facodeData(this.crud);
  postData(String email) async {
    var response = await crud.postData(AppLinks.resend2facode, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
