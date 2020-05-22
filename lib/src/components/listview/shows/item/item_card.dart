import 'package:flutter/material.dart';
import 'package:clonedeezer/src/utilities/utils.dart' as utils;

class ListCardItem extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;
  final String boxSize;
  final double cardArea;

  ListCardItem({this.data, this.indexCurrent, this.cardArea, this.boxSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 15.0,
        top: 15.0,
      ),
      width: 164,
      height: cardArea * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
              color: Color(utils.secondaryColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              margin: EdgeInsets.zero,
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        child: Image.network(
                          data[indexCurrent]['image'],
                          height: cardArea * 0.5,
                          width: cardArea,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: cardArea * 0.5,
                        width: cardArea,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                data[indexCurrent]['title'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                maxLines: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                data[indexCurrent]['description'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                maxLines: 5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 5,
                    bottom: cardArea / 2.2,
                    child: Icon(
                      Icons.play_circle_filled,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
          // Stack(
          //   children: <Widget>[
          //     ClipRRect(
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(5),
          //       ),
          //       child: Image.network(
          //         data[indexCurrent]['image'],
          //         height: cardArea - 20,
          //         fit: BoxFit.cover,
          //         repeat: ImageRepeat.noRepeat,
          //       ),
          //     ),
          //     Positioned(
          //       left: 5,
          //       bottom: 7,
          //       child: Icon(
          //         Icons.play_circle_filled,
          //         size: 30,
          //         color: Colors.white,
          //       ),
          //     )
          //   ],
          // ),
          // data[indexCurrent]['title'] != null
          //     ? Padding(
          //       padding: const EdgeInsets.only(top: 8.0),
          //       child: Text(
          //           data[indexCurrent]['title'],
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 15,
          //           ),
          //           overflow: TextOverflow.ellipsis,
          //           softWrap: true,
          //           maxLines: 3,
          //         ),
          //     )
          //     : Container()
        ],
      ),
    );
  }
}
