import 'package:get/get.dart';
import './home_page_controller.dart';

class HomePageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(HomePageController());
    }
}