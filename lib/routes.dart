import 'package:flower_shop/core/constant/app_routes.dart';
import 'package:flower_shop/view/auth/login_screen.dart';
import 'package:flower_shop/view/auth/signup_screen.dart';
import 'package:flower_shop/view/auth/verificatation_screen.dart';
import 'package:flower_shop/view/bottom_navbar.dart';
import 'package:flower_shop/view/filter_page.dart';
import 'package:flower_shop/view/flowe_details_page.dart';
import 'package:flower_shop/view/flower_page.dart';
import 'package:flower_shop/view/home_page.dart';
import 'package:flower_shop/view/mycart_page.dart';
import 'package:flower_shop/view/payment2_screen.dart';
import 'package:flower_shop/view/payment_page.dart';
import 'package:flower_shop/view/sitting_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const LoginScreen()),
  GetPage(name: AppRoutes.signUpScreen, page: () => const SignUpScreen()),
  GetPage(
      name: AppRoutes.verificationScreen, page: () => const VerificationPage()),
  GetPage(name: AppRoutes.sittingpage, page: () => const SittingScreen()),
  GetPage(
      name: AppRoutes.flowerdetailspage, page: () => const FloweDetailsPage()),
  GetPage(name: AppRoutes.filterpage, page: () => const FilterPage()),
  GetPage(name: AppRoutes.flowerpage, page: () => const FlowerPage()),
  GetPage(name: AppRoutes.mycartpage, page: () => const MycartPage()),
  GetPage(name: AppRoutes.paymentpage, page: () => const PaymentPage()),
  GetPage(name: AppRoutes.payment2page, page: () => const Payment2Page()),
  GetPage(name: AppRoutes.home, page: () => const HomePage()),
  GetPage(name: AppRoutes.bottomNavbar, page: () => const BottomNavbar()),
];
