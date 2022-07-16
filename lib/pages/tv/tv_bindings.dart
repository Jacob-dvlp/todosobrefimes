import 'package:get/get.dart';
import './tv_controller.dart';

class TvBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(TvController());
    }
}