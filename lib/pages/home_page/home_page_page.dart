import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/navigator_bar.dart';
import 'home_page_controller.dart';
import 'widgets/body_home_footer_list.dart';
import 'widgets/body_home_listview.dart';
import 'widgets/body_home_page_swiper.dart';

class HomePagePage extends GetView<HomePageController> {
  const HomePagePage({Key? key}) : super(key: key);
  static const String routeName = '/home-page';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: navigatorCustomAppWidget(context),
          backgroundColor: const Color(0XFF1e2746),
          body: SafeArea(
            child: Stack(
              children: [
                bodyHomePage(controller, context),
                bodyHomeListview(controller, context),
                bodyHomeFooterList(context)
              ],
            ),
          ),
        );
      },
    );
  }
}
