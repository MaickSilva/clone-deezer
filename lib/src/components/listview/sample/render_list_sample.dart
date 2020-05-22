import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/title/title_section.dart';

class ListCardSample extends StatelessWidget {
  final List<Map<String, Object>> listData;
  final String titleSection;
  ListCardSample({
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
            padding: EdgeInsets.only(left:15),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left:15.0, right: 15),
                    scrollDirection: Axis.horizontal,
                    itemCount: listData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // 164 - 15
                        width: 149,
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
                        child: Center(
                          child: Text(
                            listData[index]['title'],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
