import 'package:flutter/material.dart';
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/models/response_move.dart';
import 'package:i_love_move/pages/home_page/home_page_controller.dart';
import 'package:i_love_move/routes/imports_custom.dart';

class BodyHomeFooterList extends StatelessWidget {
  const BodyHomeFooterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(Get.find()),
        builder: (_) {
          return Positioned(
            top: 345,
            left: 10,
            right: 10,
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: _.move.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final Result model = _.move[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3.2,
                                        child: Image.network(
                                          '${BaseURL.img}${model.posterPath}',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 200,
                                          height: 35,
                                          color: Color(0XFF1e2746)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 04,
                                        left: 05,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                model.name!,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 05,
                                                  ),
                                                  Text(
                                                    model.voteAverage
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.yellow,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        shrinkWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: _.move.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final Result model = _.move[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3.2,
                                        child: Image.network(
                                          '${BaseURL.img}${model.posterPath}',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 200,
                                          height: 35,
                                          color: Color(0XFF1e2746)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 04,
                                        left: 05,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Guerra infinita',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 02,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 05,
                                                  ),
                                                  Text(
                                                    '8.4',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.yellow,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}
