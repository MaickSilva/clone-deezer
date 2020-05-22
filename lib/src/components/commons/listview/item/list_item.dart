import 'package:clonedeezer/src/components/commons/listview/item/description/description_text.dart';
import 'package:clonedeezer/src/components/commons/listview/item/description/description_track.dart';
import 'package:clonedeezer/src/components/commons/listview/item/image/image_play_bottom.dart';
import 'package:clonedeezer/src/components/commons/listview/item/image/image_play_center.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;
  final double cardArea;
  final String positionPlay;

  ListItem({
    this.data,
    this.indexCurrent,
    this.cardArea,
    this.positionPlay,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWithIcon;
    switch (positionPlay) {
      case 'center':
        imageWithIcon = ImagePlayCenter(imageUrl: data[indexCurrent]['image'], cardArea: cardArea,);
        break;
      case 'bottom':
        imageWithIcon = ImagePlayBottom(imageUrl: data[indexCurrent]['image'], cardArea: cardArea,);
        break;
      default:
      imageWithIcon = ImageDefault(imageUrl: data[indexCurrent]['image'], cardArea: cardArea,);
    }

    return Container(
      padding: const EdgeInsets.only(
        right: 15.0,
        top: 15.0,
      ),
      width: cardArea,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          imageWithIcon,
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
          //   ],
          // ),
          data[indexCurrent]['tracks'] == null
              ? DescriptionOnlyText(data: data, indexCurrent: indexCurrent)
              : DescriptionWithTrack(data: data, indexCurrent: indexCurrent),
        ],
      ),
    );
  }
}

class ImageDefault extends StatelessWidget {
  final String imageUrl;
  final int indexCurrent;
  final double cardArea;

  ImageDefault({
    this.imageUrl,
    this.indexCurrent,
    this.cardArea,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: Image.network(
            imageUrl,
            height: cardArea - 20,
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
      ],
    );
  }
}
