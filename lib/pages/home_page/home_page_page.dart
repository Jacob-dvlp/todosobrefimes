import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_move/pages/widgets/navigator_bar.dart';

import './home_page_controller.dart';

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
            child: Column(
              children: [
                SizedBox(
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 300,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            print(index);
                          },
                          child: Image.asset(
                            _.img[index].toString(),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      autoplay: true,
                      itemCount: _.img.length,
                      itemWidth: 340.0,
                      layout: SwiperLayout.STACK,
                      viewportFraction: 0.8,
                      scale: 2.9,
                      indicatorLayout: PageIndicatorLayout.COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
