import 'package:flutter/material.dart';

class ListBoxItem extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;
  final String boxSize;
  final double cardArea;

  ListBoxItem({this.data, this.indexCurrent, this.cardArea, this.boxSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15.0,
      ),
      width: cardArea,
      height: cardArea,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                child: Image.network(
                  data[indexCurrent]['image'],
                  height: cardArea - 15,
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
              Positioned(
                left: 5,
                bottom: 7,
                child: Icon(
                  Icons.play_circle_filled,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
          data[indexCurrent]['title'] != null
              ? Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                    data[indexCurrent]['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 3,
                  ),
              )
              : Container()
        ],
      ),
    );
  }
}
