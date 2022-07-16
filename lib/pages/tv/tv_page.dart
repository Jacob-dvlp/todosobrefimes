import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_move/pages/tv/widget/tv_body_custom_widget.dart';
import 'package:i_love_move/pages/widgets/navigator_bar.dart';

import './tv_controller.dart';

class TvPage extends GetView<TvController> {
  const TvPage({Key? key}) : super(key: key);
  static const String routeName = "/tv";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navigatorCustomAppWidget(context),
      backgroundColor: const Color(0XFF1e2746),
      body: SafeArea(
        child: TvBodyCustomWidget(),
      ),
    );
  }
}
