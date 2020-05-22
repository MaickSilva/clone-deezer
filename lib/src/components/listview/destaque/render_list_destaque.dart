import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/title/title_section.dart';

class ListCardDestaque extends StatelessWidget {
  final List<Map<String, Object>> listData;
  final String titleSection;
  ListCardDestaque({
    this.titleSection,
    this.listData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TitleSection(
            title: titleSection,
            padding: EdgeInsets.only(left: 15),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 185,
                  margin: EdgeInsets.only(bottom: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 15.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: listData.length,
                    itemBuilder: (BuildContext context, int index) {
                      Color colorUtil = index == 0 ? Colors.black : Colors.white;
                      return Container(
                        // 164 - 15
                        width: 310,
                        margin: EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(listData[index]['image']),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: <Widget>[
                            Positioned(
                              left: 5,
                              bottom: 7,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 30,
                                color: colorUtil,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 15),
                              width: 120,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    listData[index]['title'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'MabryPro',
                                      color: colorUtil,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.fade,
                                    softWrap: true,
                                    textAlign: TextAlign.end,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:15.0),
                                    child: Text(
                                      listData[index]['description'],
                                      style: TextStyle(
                                        fontFamily: 'MabryPro',
                                        color: colorUtil,
                                      ),
                                      overflow: TextOverflow.fade,
                                      softWrap: true,
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
