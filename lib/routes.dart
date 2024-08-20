import 'package:flower_shop/constant/app_routes.dart';
import 'package:flower_shop/view/auth/login_screen.dart';
import 'package:flower_shop/view/auth/signup_screen.dart';
import 'package:flower_shop/view/auth/verificatation_screen.dart';
import 'package:flower_shop/view/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: AppRoutes.signUpScreen,
    page: () => const SignUpScreen(),
  ),
  GetPage(
      name: AppRoutes.verificationScreen, page: () => const VerificationPage()),
  GetPage(
    name: AppRoutes.home,
    page: () => const HomePage(),
  ),
];
