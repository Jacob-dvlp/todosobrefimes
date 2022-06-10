import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_move/pages/splash_page/splash_page_page.dart';
import 'package:i_love_move/routes/route_page.dart';
import 'package:i_love_move/utils/ui/thema_default.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemaDefault.themeData,
      title: 'I love move',
      getPages: RoutePage.appRoute,
      initialRoute: SplashPagePage.routeName,
    );
  }
}
