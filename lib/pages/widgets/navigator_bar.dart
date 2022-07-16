import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../routes/imports_custom.dart';
import '../home_page/home_page_controller.dart';

Widget navigatorCustomAppWidget(BuildContext context) {
  return GetBuilder<HomePageController>(
      init: HomePageController(Get.find()),
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(0.0),
          child: FloatingNavbar(
            //  backgroundColor: Colors.white,
            onTap: (value) => controller.escolher(value),
            currentIndex: controller.index,
            selectedItemColor: const Color(0xFF2356A3),
            unselectedItemColor: Colors.white,
            items: [
              FloatingNavbarItem(
                  icon: Icons.play_circle_rounded, title: 'Home'),
              FloatingNavbarItem(icon: Icons.tv, title: 'Tv'),
              FloatingNavbarItem(icon: Icons.create, title: 'Criar'),
              FloatingNavbarItem(icon: Icons.credit_card_outlined, title: 'Tv'),
            ],
          ),
        );
      });
}
