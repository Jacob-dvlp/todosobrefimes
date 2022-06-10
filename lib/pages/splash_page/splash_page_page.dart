import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_page_controller.dart';

class SplashPagePage extends GetView<SplashPageController> {
  const SplashPagePage({Key? key}) : super(key: key);
  static const String routeName = '/splash-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashPagePage'),
      ),
      body: Container(),
    );
  }
}
