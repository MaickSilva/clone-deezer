import 'package:clonedeezer/src/components/listview/premiun/item/list_item.dart';
import 'package:clonedeezer/src/components/listview/premiun/item/list_item_flow.dart';
import 'package:clonedeezer/src/models/flow.dart';
import 'package:flutter/material.dart';

class RenderListItem extends StatelessWidget {
  final List<Data> data;
  final int indexCurrent;
  final String boxSize;
  final bool flow;

  RenderListItem({
    this.data,
    this.boxSize,
    this.indexCurrent,
    this.flow,
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
    return (flow && indexCurrent == 0)
        ? ListItemFlow(data: data, indexCurrent: indexCurrent, cardArea: cardArea,)
        : ListItem(data: data, indexCurrent: indexCurrent, cardArea: cardArea);
  }
}
