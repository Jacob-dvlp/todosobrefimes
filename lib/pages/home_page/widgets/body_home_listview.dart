import 'package:flutter/material.dart';

Widget bodyHomeListview(controller) {
  return Positioned(
    top: 50,
    child: Container(
      width: 80,
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.amber),
              ]),
            );
          }),
    ),
  );
}
