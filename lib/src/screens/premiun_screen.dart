import 'package:clonedeezer/src/components/listview/premiun/render_list.dart';
import 'package:clonedeezer/src/components/title/title_section.dart';
import 'package:clonedeezer/src/models/flow.dart';
import 'package:clonedeezer/src/services/api.dart';
import 'package:flutter/material.dart';

class PremiunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDeezerApiWithIdProfile( profileId: 'SeuIdProfileAqui' ,endpoint: 'flow'),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.pink,
            ));
          default:
            if (snapshot.hasError) {
              return Center(
                child: Text('error'),
              );
            } else {
              var data = snapshot.data['data'] as List;
              List<Data> dataList =
                  data.map((item) => Data.fromJson(item)).toList();
              return RenderFlowList(
                listData: dataList,
                titleSection: 'Para você ouvir',
                cardStyle: 'padrao',
                isFlow: true,
              );
              // print(snapshot.data.runtimeType);
              // print(dataCases);
              // return Padding(
              //   padding: const EdgeInsets.only(top: 20.0),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: <Widget>[
              //       TitleSection(
              //         title: 'Teste',
              //         padding: EdgeInsets.only(left: 15.0),
              //       ),
              //       Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: <Widget>[
              //           Expanded(
              //             child: Container(
              //               width: MediaQuery.of(context).size.width,
              //               height: heightCard,
              //               child: ListView.builder(
              //                 padding: EdgeInsets.only(left: 15.0),
              //                 scrollDirection: Axis.horizontal,
              //                 itemCount: listData.length,
              //                 itemBuilder: (BuildContext context, int index) {
              //                   return RenderListItem(
              //                     data: listData,
              //                     indexCurrent: index,
              //                     boxSize: cardStyle,
              //                     flow: isFlow,
              //                   );
              //                 },
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // );
            }
        }
      },
    );
  }
}
