import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String title;
  final EdgeInsets padding;

  TitleScreen({this.title, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
