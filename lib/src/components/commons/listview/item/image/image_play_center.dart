import 'package:flutter/material.dart';

class ImagePlayCenter extends StatelessWidget {
  final String imageUrl;
  final double cardArea;

  ImagePlayCenter({
    this.imageUrl,
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
    );
  }
}
