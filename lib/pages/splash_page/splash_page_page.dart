import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_move/constants/assets_img.dart';

import './splash_page_controller.dart';

class SplashPagePage extends GetView<SplashPageController> {
  const SplashPagePage({Key? key}) : super(key: key);
  static const String routeName = '/splash-page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              splashScreen,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: const Color(0XFF1e2746).withOpacity(0.5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          const Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
