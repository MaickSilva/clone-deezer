import 'package:flutter/material.dart';

class DescriptionOnlyText extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;

  DescriptionOnlyText({this.data, this.indexCurrent});

  @override
  Widget build(BuildContext context) {
    return data[indexCurrent]['por'] != null
        ? TitleAndDescription(data: data, indexCurrent: indexCurrent)
        : OnlyDescription(data: data, indexCurrent: indexCurrent);
  }
}

class TitleAndDescription extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;

  TitleAndDescription({this.data, this.indexCurrent});
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
              fontSize: 13,
            ),
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 2,
          ),
          Text(
            data[indexCurrent]['por'],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 1,
          ),
          data[indexCurrent]['badge'] != null ? 
            Container(
              width: 50,
              height: 20,
              margin: EdgeInsets.only(top:4.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 4.0, top: 4.0),
                child: Text(
                  data[indexCurrent]['badge'].toString().toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 9,
                  ),
                ),
              ),
            )
            : Container()
        ],
      ),
    );
  }
}

class OnlyDescription extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;

  OnlyDescription({this.data, this.indexCurrent});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        data[indexCurrent]['description'],
        style: TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        maxLines: 3,
      ),
    );
  }
}
