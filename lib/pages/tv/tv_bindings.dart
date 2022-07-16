import 'package:get/get.dart';
import 'package:i_love_move/infra/providers/tv_provider.dart';
import 'package:i_love_move/infra/repositorys/tv_repository.dart';

import './tv_controller.dart';

class TvBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TvRepository());
    Get.lazyPut(() => TvProvider(Get.find()));
    Get.lazyPut(() => TvController(Get.find()));
  }
}
