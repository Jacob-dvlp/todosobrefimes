import 'package:flutter/material.dart';

import '../../../constants/assets_img.dart';

Widget bodyHomeFooterList(context) {
  return Positioned(
      top: 445,
      left: 10,
      right: 10,
      child: SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 100,
                  child: Image.asset(
                    splashScreen,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            shrinkWrap: true,
          )));
}
