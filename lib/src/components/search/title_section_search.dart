import 'package:flutter/material.dart';

class TitleSectionSearch extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  TitleSectionSearch({this.title, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
