import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Resendverificationcodedata {
  Crud crud;
  Resendverificationcodedata(this.crud);
  postData(String email) async {
    var response = await crud.postData(AppLinks.resendverificationcode, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
