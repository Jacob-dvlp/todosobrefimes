import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:i_love_move/pages/home_page/home_page_controller.dart';
import 'package:i_love_move/routes/imports_custom.dart';

Widget navigatorCustomAppWidget(BuildContext context) {
  return GetBuilder<HomePageController>(
      init: HomePageController(),
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
              FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
              FloatingNavbarItem(
                  icon: Icons.sticky_note_2_outlined, title: 'Serviços'),
              FloatingNavbarItem(icon: Icons.create, title: 'Criar'),
              FloatingNavbarItem(
                  icon: Icons.credit_card_outlined, title: 'Financeiro'),
            ],
          ),
        );
      });
}
