import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/models/response_move.dart';
import 'package:i_love_move/pages/aboutitem/aboutitem_page.dart';
import 'package:i_love_move/pages/home_page/home_page_controller.dart';
import 'package:i_love_move/routes/imports_custom.dart';
import 'package:skeletons/skeletons.dart';

class BodyHomePageSwiper extends GetView<HomePageController> {
  const BodyHomePageSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(Get.find()),
        builder: (_) {
          return Skeleton(
            isLoading: controller.isloading,
            skeleton: SkeletonListView(),
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: _.move.length,
                    itemBuilder: (context, index) {
                      final Result model = _.move[index];
                      return Hero(
                        transitionOnUserGestures: true,
                        tag: model,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AboutitemPage(model: model))),
                            child: SizedBox(
                              child: Card(
                                clipBehavior: Clip.hardEdge,
                                elevation: 20,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2,
                                          child: CachedNetworkImage(
                                            fit: BoxFit.fill,
                                            imageUrl:
                                                '${BaseURL.img}${model.posterPath}',
                                            placeholder: (context, url) => Center(
                                                child:
                                                    CircularProgressIndicator()),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 35,
                                            color: Color(0XFF1e2746)
                                                .withOpacity(0.5),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 02,
                                          left: 05,
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  model.name!,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 05,
                                                    ),
                                                    Text(
                                                      '${model.voteAverage}',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.yellow,
                                                      ),
                                                    ),
                                                    Text(
                                                      ' TMDB',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.yellow,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 220,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                      '${model.voteCount}',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.yellow,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 05,
                                                    ),
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
                            ),
                          ),
                        ),
                      );
                    },
                    shrinkWrap: true,
                  ),
                )),
          );
        });
  }
}
