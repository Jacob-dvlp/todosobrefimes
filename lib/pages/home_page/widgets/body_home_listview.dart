import 'package:flutter/material.dart';

Widget bodyHomeListview(controller, context) {
  return Positioned(
    top: 320,
    left: 0,
    right: 0,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0XF).withOpacity(0.3),
                ),
              ], borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Especial teatro",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0XF).withOpacity(0.3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Música",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0XF).withOpacity(0.3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Show",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0XF).withOpacity(0.3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Tv",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
