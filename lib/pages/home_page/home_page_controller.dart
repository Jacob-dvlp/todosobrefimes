import 'package:get/get.dart';
import 'package:i_love_move/infra/models/api_response/response_move.dart';
import 'package:i_love_move/infra/providers/move_provider.dart';
import 'package:i_love_move/pages/home_page/home_page_page.dart';
import 'package:i_love_move/pages/tv/tv_page.dart';

class HomePageController extends GetxController {
  final MoveProvider moveProvider;
  List<Result> move = [];
  bool isloading = false;
  int index = 0;
  List img = [
    'assets/carousel/img1.jpg',
    'assets/carousel/img2.jpg',
    'assets/carousel/img3.jpg',
    'assets/carousel/img4.webp',
    'assets/carousel/img5.webp'
  ].obs;

  HomePageController(this.moveProvider);

  Future getMove() async {
    isloadingData(true);
    move = await moveProvider.getMove();
    isloadingData(false);
  }

  isloadingData(bool value) {
    isloading = value;
    update();
  }

  @override
  void onInit() async {
    getMove();
    super.onInit();
  }

  escolher(int value) {
    switch (value) {
      case 0:
        Get.toNamed(HomePagePage.routeName);
        break;
      case 1:
        break;
      case 2:
        //   Get.toNamed(CriarServicosPage.routeName);
        Get.toNamed(TvPage.routeName);

        break;
      case 3:
        //   Get.toNamed(PagamentoCrientePage.routeName);
        break;
      default:
        break;
    }
    index = value;
    update();
  }
}
