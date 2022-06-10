import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_page_controller.dart';

class HomePagePage extends GetView<HomePageController> {
  const HomePagePage({Key? key}) : super(key: key);
  static const String routeName = '/home-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1e2746),
      body: SafeArea(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Cinema',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 170,
                  height: 40,
                  child: Container(
                    color: const Color(0XFF090c15),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text(
                            'Buscar',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            color: Colors.grey,
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
