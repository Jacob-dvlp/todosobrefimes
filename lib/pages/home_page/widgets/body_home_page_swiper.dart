import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

Widget bodyHomePage(controller, context) {
  return Column(
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
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    controller.img[index].toString(),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: controller.img.length,
            itemWidth: MediaQuery.of(context).size.width,
            layout: SwiperLayout.STACK,
            viewportFraction: 0.8,
            indicatorLayout: PageIndicatorLayout.COLOR,
          ),
        ),
      ),
    ],
  );
}
