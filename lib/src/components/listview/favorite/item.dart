import 'package:flutter/material.dart';

class ListItemFavorite extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;
  final bool hasFlow;

  ListItemFavorite({this.data, this.indexCurrent,  this.hasFlow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 15.0,
        top: 15.0,
      ),
      width: 164,
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
                  height: 164.0 - 20,
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
              hasFlow != null && indexCurrent == 0
                  ? Positioned(
                      left: 10,
                      bottom: 10,
                      child: Icon(
                        Icons.play_circle_filled,
                        size: 35,
                        color: Colors.white,
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
