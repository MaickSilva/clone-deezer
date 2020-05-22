import 'package:clonedeezer/src/models/flow.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final List<Data> data;
  final int indexCurrent;
  final double cardArea;

  ListItem({this.data, this.indexCurrent, this.cardArea});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 15.0,
        top: 15.0,
      ),
      width: cardArea,
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
                  data[indexCurrent].album.cover,
                  height: cardArea - 20,
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
            ],
          ),
          //  DescriptionOnlyText(data: data, indexCurrent: indexCurrent),
          // data[indexCurrent]['tracks'] == null
              // ? DescriptionOnlyText(data: data, indexCurrent: indexCurrent)
              // : DescriptionWithTrack(data: data, indexCurrent: indexCurrent),
        ],
      ),
    );
  }
}
