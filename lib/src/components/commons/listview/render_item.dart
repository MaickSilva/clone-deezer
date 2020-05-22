import 'package:clonedeezer/src/components/commons/listview/item/list_item.dart';
// import 'package:clonedeezer/src/components/commons/listview/item/list_item_flow.dart';
import 'package:flutter/material.dart';

class RenderListItem extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int indexCurrent;
  final String boxSize;
  final String positionPlay;


  RenderListItem({
    this.data,
    this.boxSize,
    this.indexCurrent,
    this.positionPlay,
  });

  @override
  Widget build(BuildContext context) {
    double cardArea;

    switch (boxSize) {
      case 'padrao':
        cardArea = 164;
        break;
      case 'small':
        cardArea = 120;
        break;
      default:
    }
   return ListItem(data: data, indexCurrent: indexCurrent, cardArea: cardArea, positionPlay: positionPlay,);
    //  (flow && indexCurrent == 0)
    //     ? ListItemFlow(data: data, indexCurrent: indexCurrent, cardArea: cardArea,)
  }
}
