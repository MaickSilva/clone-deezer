import 'package:clonedeezer/src/components/commons/listview/render_item.dart';
import 'package:clonedeezer/src/components/title/title_section.dart';
import 'package:flutter/material.dart';

class RenderListMusic extends StatelessWidget {
  final List<Map<String, Object>> listData;
  final String titleSection;
  final String cardStyle;
  final String positionPlay;
  final bool titleHasIcon;
  
  RenderListMusic({
    this.titleSection,
    this.listData,
    this.cardStyle,
    this.positionPlay,
    this.titleHasIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    double heightCard;

    switch (cardStyle) {
      case 'padrao':
        heightCard = 270;
        break;
      case 'small':
        heightCard = 200;
        break;
      default:
    }
    // check is data has description
    listData[0]['description'] == null
        ? heightCard -= 20
        : heightCard = heightCard;

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TitleSection(
            title: titleSection,
            padding: EdgeInsets.only(left: 15.0),
            hasIcon: titleHasIcon,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: heightCard,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 15.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: listData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RenderListItem(
                        data: listData,
                        indexCurrent: index,
                        boxSize: cardStyle,
                        positionPlay: positionPlay,
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
