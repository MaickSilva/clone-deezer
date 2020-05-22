import 'package:flutter/material.dart';

class DescriptionWithTrack extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;

  DescriptionWithTrack({this.data, this.indexCurrent});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data[indexCurrent]['title'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 3,
            ),
            Text(
              '${data[indexCurrent]['tracks']} faixas',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ],
        )

        // child: Text(
        //   data[indexCurrent]['description'],
        //   style: TextStyle(
        //     color: Colors.grey,
        //     fontSize: 13,
        //   ),
        //   overflow: TextOverflow.ellipsis,
        //   softWrap: true,
        //   maxLines: 3,
        // ),
        );
  }
}
