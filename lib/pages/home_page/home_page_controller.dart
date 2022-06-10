import 'package:get/get.dart';

class HomePageController extends GetxController {
  int index = 0;
  List img = [
    'assets/carousel/img1.jpg',
    'assets/carousel/img2.jpg',
    'assets/carousel/img3.jpg',
    'assets/carousel/img4.webp',
    'assets/carousel/img5.webp'
  ].obs;

  escolher(int value) {
    switch (value) {
      case 0:
        //   Get.offNamed(HomePageClientePage.routeName);

        break;
      case 1:
        //  Get.toNamed(MeusServicoAtivosPage.routeName);

        break;
      case 2:
        //   Get.toNamed(CriarServicosPage.routeName);

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
