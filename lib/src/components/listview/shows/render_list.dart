import 'package:clonedeezer/src/components/listview/shows/item/item.dart';
import 'package:clonedeezer/src/components/listview/shows/item/item_card.dart';
import 'package:clonedeezer/src/components/title/title_section.dart';
import 'package:flutter/material.dart';

class RenderListShows extends StatelessWidget {
  final List<Map<String, Object>> listData;
  final String titleSection;
  final String boxSize;
  final bool titleHasIcon;

  RenderListShows({
    this.titleSection,
    this.listData,
    this.boxSize,
    this.titleHasIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    double cardArea;
    int paddingToText = 0;

    switch (boxSize) {
      case 'padrao':
        cardArea = 164;
        paddingToText = 50;
        break;
      case 'big':
        // cardArea = 328;
        cardArea = 300;
        paddingToText = 15;
        break;
      case 'small':
        cardArea = 110;
        break;
      default:
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TitleSection(
              title: titleSection, padding: EdgeInsets.only(left: 15.0), hasIcon: titleHasIcon,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: cardArea + paddingToText,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 15.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: listData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return boxSize != 'big'
                          ? ListBoxItem(
                              data: listData,
                              indexCurrent: index,
                              cardArea: cardArea,
                            )
                          : ListCardItem(
                              data: listData,
                              indexCurrent: index,
                              cardArea: cardArea,
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
