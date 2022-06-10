import 'package:get/get.dart';
import 'package:i_love_move/pages/home_page/home_page_page.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 6), () {
      Get.offNamed(HomePagePage.routeName);
    });
    super.onInit();
  }
}
