import 'package:get/get.dart';
import './splash_page_controller.dart';

class SplashPageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SplashPageController());
    }
}