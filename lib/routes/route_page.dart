import 'package:i_love_move/pages/home_page/home_page_bindings.dart';
import 'package:i_love_move/pages/home_page/home_page_page.dart';

import 'imports_custom.dart';

class RoutePage {
  static List<GetPage> appRoute = [
    GetPage(
        name: SplashPagePage.routeName,
        page: () => const SplashPagePage(),
        binding: SplashPageBindings()),
    GetPage(
        name: HomePagePage.routeName,
        page: () => const HomePagePage(),
        binding: HomePageBindings())
  ];
}
