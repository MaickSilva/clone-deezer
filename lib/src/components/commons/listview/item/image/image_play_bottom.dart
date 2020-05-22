import 'package:flutter/material.dart';

class ImagePlayBottom extends StatelessWidget {
  final String imageUrl;
  final int indexCurrent;
  final double cardArea;

  ImagePlayBottom({
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
            width:cardArea,
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
    );
  }
}
