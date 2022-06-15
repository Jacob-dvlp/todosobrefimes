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
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                child: Image.asset(
                                  splashScreen,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 200,
                                  height: 35,
                                  color: Color(0XFF1e2746).withOpacity(0.5),
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
                                              fontWeight: FontWeight.bold,
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
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height:
                                    MediaQuery.of(context).size.height / 3.8,
                                child: Image.asset(
                                  splashScreen,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 200,
                                  height: 35,
                                  color: Color(0XFF1e2746).withOpacity(0.5),
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
                                              fontWeight: FontWeight.bold,
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
}
