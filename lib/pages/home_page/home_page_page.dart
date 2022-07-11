import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_move/pages/home_page/widgets/body_home_footer_list.dart';
import 'package:i_love_move/pages/home_page/widgets/body_home_page_swiper.dart';

import '../widgets/navigator_bar.dart';
import 'home_page_controller.dart';

class HomePagePage extends GetView<HomePageController> {
  const HomePagePage({Key? key}) : super(key: key);
  static const String routeName = '/home-page';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: HomePageController(Get.find()),
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: navigatorCustomAppWidget(context),
          backgroundColor: const Color(0XFF1e2746),
          body: SafeArea(
            child: Stack(
              children: [
                BodyHomePageSwiper(),
                // bodyHomeListview(controller, context),
                BodyHomeFooterList()
              ],
            ),
          ),
        );
      },
    );
  }
}
