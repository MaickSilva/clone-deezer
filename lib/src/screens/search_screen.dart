import 'package:clonedeezer/src/utilities/mocks/search.dart';
import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/title/title_screen.dart';
import 'package:clonedeezer/src/utilities/utils.dart' as utils;

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          stretch: true,
          elevation: 0,
          backgroundColor: utils.createColor(Color(utils.primaryColor)),
          pinned: true,
          expandedHeight: 170.0,
          excludeHeaderSemantics: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15.0,
              ),
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (value) {
                      // filterSearchResults(value);
                    },
                    // controller: editingController,
                    decoration: InputDecoration(
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18,
                      ),
                      fillColor: Color(utils.secondaryColor),
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      labelText: "Artistas, faixas, podcasts...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {
                          print('Busca');
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          print('mic');
                        },
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    cursorColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
            background: Container(
              height: 120,
              child: TitleScreen(
                title: 'Busca',
                padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TitleSectionSearch(
                          title: 'A partir de um som',
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Card(
                          margin: EdgeInsets.zero,
                          color: Colors.blueAccent,
                          child: ListTile(
                            leading: Icon(
                              Icons.surround_sound,
                              size: 50,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Que música é esta?',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'identifique a música tocando perto de você',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TitleSectionSearch(
                    title: 'Gêneros, moods e mais',
                    padding: EdgeInsets.only(top: 30.0, left: 15.0),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: DataMockSearch.dataSearch.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onLongPress: () {},
                          child: ListTile(
                            title: Text(
                              DataMockSearch.dataSearch[index].toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TitleSectionSearch extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  TitleSectionSearch({this.title, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
