import 'package:get/get.dart';
import 'package:i_love_move/infra/providers/move_provider.dart';
import 'package:i_love_move/infra/repositorys/move_repository.dart';

import './home_page_controller.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoveProvider(Get.find()));
    Get.lazyPut(() => MoveRepository());
    Get.lazyPut(() => HomePageController(Get.find()));
  }
}
