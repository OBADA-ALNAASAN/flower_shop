import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Confirmdata {
  Crud crud;
  Confirmdata(this.crud);
  postData(String email,String confirmCode) async {
    var response = await crud.postData(AppLinks.confirmcode, {
      "email":email,
      "TwoFactorAuth":confirmCode,
     
    });
    return response.fold((l) => l, (r) => r);
  }
}

