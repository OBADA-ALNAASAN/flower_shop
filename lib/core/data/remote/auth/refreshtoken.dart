import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Refreshtoken {
  Crud crud;
  Refreshtoken(this.crud);
  postData(String token) async {
    var response = await crud.postData(AppLinks.refreshtoken, {
      "Token": token,
    });
    return response.fold((l) => l, (r) => r);
  }
}
