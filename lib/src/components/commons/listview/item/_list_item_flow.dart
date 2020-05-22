import 'package:clonedeezer/src/components/commons/listview/item/description/description_text.dart';
import 'package:clonedeezer/src/components/commons/listview/item/description/description_track.dart';
import 'package:flutter/material.dart';

class ListItemFlow extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;
  final double cardArea;
  final String positionIcon;

  ListItemFlow({
    this.data,
    this.indexCurrent,
    this.cardArea,
    this.positionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15.0, top: 15.0),
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
                  data[indexCurrent]['image'],
                  height: cardArea - 20,
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.play_circle_filled,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          data[indexCurrent]['description'] == null
              ? DescriptionWithTrack(data: data, indexCurrent: indexCurrent)
              : DescriptionOnlyText(data: data, indexCurrent: indexCurrent),
        ],
      ),
    );
  }
}
