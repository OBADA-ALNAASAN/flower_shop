import 'package:flower_shop/core/constant/app_constan.dart';
import 'package:flower_shop/core/constant/app_routes.dart';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  int? get priorty => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (token != null && token != "") {
      return const RouteSettings(name: AppRoutes.bottomNavbar);
    }
    return null;
  }
}
