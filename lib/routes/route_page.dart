import 'imports_custom.dart';

class RoutePage {
  static List<GetPage> appRoute = [
    GetPage(
        name: SplashPagePage.routeName,
        page: () => const SplashPagePage(),
        binding: SplashPageBindings())
  ];
}
