import 'package:flutter/material.dart';
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/models/response_move.dart';
import 'package:i_love_move/pages/home_page/home_page_controller.dart';
import 'package:i_love_move/routes/imports_custom.dart';

class BodyHomePageSwiper extends GetView<HomePageController> {
  const BodyHomePageSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(Get.find()),
        builder: (_) {
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
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _.move.length,
                        itemBuilder: (context, index) {
                          final Result model = _.move[index];
                          return GestureDetector(
                            onTap: () {
                              print('${BaseURL.img}${model.backdropPath}');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 400,
                              child: Image.network(
                                  '${BaseURL.img}${model.backdropPath}'),
                            ),
                          );
                        })),
              ),
            ],
          );
        });
  }
}
