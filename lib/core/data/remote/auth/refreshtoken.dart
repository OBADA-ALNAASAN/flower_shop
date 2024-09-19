import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Refreshtoken {
  Crud crud;
  Refreshtoken(this.crud);
  postData(String token) async {
    var response = await crud.getData(AppLinks.refreshtoken);
    return response.fold((l) => l, (r) => r);
  }
}
