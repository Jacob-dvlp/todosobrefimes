import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './splash_page_controller.dart';

class SplashPagePage extends GetView<SplashPageController> {
  const SplashPagePage({Key? key}) : super(key: key);
  static const String routeName = '/splash-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1e2746),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'OLÁ',
                style: TextStyle(fontSize: 43.0, color: Colors.white),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 40.0, fontFamily: 'Horizon', color: Colors.white),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('SEJA'),
                    RotateAnimatedText('BEM'),
                    RotateAnimatedText('VINDO'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
