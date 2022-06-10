import 'package:get/get.dart';
import 'package:i_love_move/pages/splash_page/splash_page_bindings.dart';
import 'package:i_love_move/pages/splash_page/splash_page_page.dart';

class RoutePage {
  static List<GetPage> appRoute = [
    GetPage(
        name: SplashPagePage.routeName,
        page: () => const SplashPagePage(),
        binding: SplashPageBindings())
  ];
}
