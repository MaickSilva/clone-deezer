import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  final bool hasIcon;
  TitleSection({this.title, this.padding, this.hasIcon = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: padding ?? EdgeInsets.only(left: 15.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        hasIcon ? ArrowRight() : Container()
      ],
    );
  }
}

class ArrowRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_arrow_right,
      color: Colors.white,
    );
  }
}
