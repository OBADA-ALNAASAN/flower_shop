import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Verificationdata {
  Crud crud;
  Verificationdata(this.crud);
  postData(String email,String verifycode) async {
    var response = await crud.postData(AppLinks.verifycode, {
      "email":email,
      "verification_code":verifycode,
     
    });
    return response.fold((l) => l, (r) => r);
  }
}

