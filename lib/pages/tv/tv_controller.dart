import 'package:get/get.dart';
import 'package:i_love_move/infra/models/api_response/response_tv.dart';
import 'package:i_love_move/infra/providers/tv_provider.dart';

class TvController extends GetxController {
  final TvProvider _provider;
  bool isLoading = false;
  List<ResultTv> responseModel = [];

  TvController(this._provider);

  Future getTv() async {
    isloadingData(true);
    responseModel = await _provider.getTv();
    isloadingData(false);
  }

  isloadingData(bool value) {
    isLoading = value;
    update();
  }

  @override
  void onInit() {
    getTv();
    super.onInit();
  }
}
