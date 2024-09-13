import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Logoutdata {
  Crud crud;
  Logoutdata(this.crud);
  postData(String token) async {
    var response = await crud.postData(AppLinks.logout, {
      "Token": token,
    });
    return response.fold((l) => l, (r) => r);
  }
}
