import 'package:clonedeezer/src/utilities/mocks/favorite.dart';
import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/favorite/bagde_new.dart';
import 'package:clonedeezer/src/components/listview/favorite/list_content.dart';
import 'package:clonedeezer/src/utilities/utils.dart' as utils;

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> dataFavorite = DataMockFavorite.dataListTile;

    return Scaffold(
      backgroundColor: utils.createColor(Color(utils.primaryColor)),
      appBar: AppBar(
        backgroundColor: utils.createColor(Color(utils.primaryColor)),
        elevation: 0,
        title: Text(
          'Deezer Free',
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
        actions: <Widget>[
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 14.0, top: 3.0),
                  height: 8,
                  width: 8,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: utils.createColor(Color(utils.accentColor)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ListCardFavorite(
              listData: DataMockFavorite.dataPlayRecently,
              titleSection: 'Tocados recentemente',
              hasFlow: true,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: dataFavorite.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        contentPadding: EdgeInsets.only(left: 15, right: 15),
                        title: dataFavorite[index]['news'] != null
                            ? BadgNew(
                                dataFavorite: dataFavorite,
                                indexCurrent: index,
                              )
                            : Text(
                                dataFavorite[index]['title'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        trailing: dataFavorite[index]['icon'] != null
                            ? Icon(
                                Icons.file_download,
                                color: Colors.white,
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 6.0),
                                child: Text(
                                  dataFavorite[index]['value'].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
