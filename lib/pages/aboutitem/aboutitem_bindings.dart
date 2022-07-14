import 'package:get/get.dart';
import './aboutitem_controller.dart';

class AboutitemBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AboutitemController());
    }
}