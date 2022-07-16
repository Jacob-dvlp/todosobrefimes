import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/models/api_response/response_tv.dart';
import 'package:i_love_move/pages/tv/aboutitemtv/about_item_tv.dart';
import 'package:i_love_move/pages/tv/tv_controller.dart';
import 'package:i_love_move/routes/imports_custom.dart';
import 'package:skeletons/skeletons.dart';

class TvBodyCustomWidget extends StatelessWidget {
  const TvBodyCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TvController>(
        init: TvController(Get.find()),
        builder: ((_) {
          return Skeleton(
            isLoading: _.isLoading,
            skeleton: SkeletonListView(),
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: _.responseModel.length,
                    itemBuilder: (context, index) {
                      final ResultTv model = _.responseModel[index];
                      return Hero(
                        transitionOnUserGestures: true,
                        tag: model,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AboutItemTv(model: model))),
                            child: SizedBox(
                              child: Card(
                                clipBehavior: Clip.hardEdge,
                                elevation: 20,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        AnimatedContainer(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2,
                                          duration: Duration(seconds: 5),
                                          curve: Curves.easeInCubic,
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
                                                SizedBox(
                                                    child: DefaultTextStyle(
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                  child: AnimatedTextKit(
                                                    animatedTexts: [
                                                      TypewriterAnimatedText(
                                                          model.name!,
                                                          speed: Duration(
                                                              milliseconds:
                                                                  20)),
                                                    ],
                                                  ),
                                                )),
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
        }));
  }
}
