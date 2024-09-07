import 'package:flower_shop/core/constant/app_theme.dart';
import 'package:flower_shop/core/localization/changelocale.dart';
import 'package:flower_shop/core/localization/translation.dart';
import 'package:flower_shop/core/services/services.dart';
import 'package:flower_shop/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return ScreenUtilInit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: MyTranslatione(),
        locale: controller.language,
        theme: AppTheme.customLightTheme,
        getPages: routes,
      ),
    );
  }
}
