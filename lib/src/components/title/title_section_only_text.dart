import 'package:flutter/material.dart';

class TitleSectionOnlyText extends StatelessWidget {
  final String titleSection;
  TitleSectionOnlyText(this.titleSection);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          titleSection,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
