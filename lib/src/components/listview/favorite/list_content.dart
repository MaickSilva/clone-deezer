import 'package:clonedeezer/src/components/listview/favorite/item.dart';
import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/title/title_section_only_text.dart';

class ListCardFavorite extends StatelessWidget {
  final List<Map<String, Object>> listData;
  final String titleSection;
  final bool hasFlow;
  ListCardFavorite({
    this.titleSection,
    this.listData,
    this.hasFlow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TitleSectionOnlyText(titleSection),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListItemFavorite(
                        data: listData,
                        indexCurrent: index,
                        hasFlow: hasFlow,
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
