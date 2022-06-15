import 'package:flutter/material.dart';

import '../../../constants/assets_img.dart';

Widget bodyHomeFooterList(context) {
  return Positioned(
      top: 450,
      left: 10,
      right: 10,
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                child: Image.asset(splashScreen),
              );
            },
            shrinkWrap: true,
          )));
}
