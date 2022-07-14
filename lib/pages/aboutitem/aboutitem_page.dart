import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/models/response_move.dart';

class AboutitemPage extends StatelessWidget {
  final Result model;
  static const String routeName = "/";

  const AboutitemPage({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1e2746),
      body: Hero(
        tag: model,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: '${BaseURL.img}${model.posterPath}',
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
