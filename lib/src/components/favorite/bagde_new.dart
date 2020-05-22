import 'package:flutter/material.dart';
import 'package:clonedeezer/src/utilities/utils.dart' as utils;

class BadgNew extends StatelessWidget {
  final List<Map<String, Object>> dataFavorite;
  final int indexCurrent;

  BadgNew({this.dataFavorite, this.indexCurrent});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          dataFavorite[indexCurrent]['title'],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 17,
          width: 22,
          margin: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: utils.createColor(
              Color(
                utils.accentColor,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:7.5, top:2.5),
            child: Text(
              dataFavorite[indexCurrent]['news'].toString(),
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
