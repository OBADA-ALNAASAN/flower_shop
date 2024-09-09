import 'package:flower_shop/core/class/crud.dart';
import 'package:flower_shop/core/constant/app_links.dart';

class Testdata {
  Crud crud;
  Testdata(this.crud);
  getData() async {
    var response = await crud.postData(AppLinks.login, {});
    return response.fold((l) => l, (r) => r);
  }
}
