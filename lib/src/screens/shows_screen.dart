import 'package:clonedeezer/src/utilities/mocks/shows.dart';
import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/listview/sample/render_list_sample.dart';
import 'package:clonedeezer/src/components/listview/shows/render_list.dart';
import 'package:clonedeezer/src/components/title/title_screen.dart';

class ShowsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleScreen(
              title: 'Shows',
              padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 15.0),
            ),
            RenderListShows(
              listData: DataMockShows.dataPodcastsForYou,
              boxSize: 'small',
              titleSection: 'Podcasts para você',
            ),
            RenderListShows(
              listData: DataMockShows.dataResume,
              boxSize: 'big',
              titleSection: 'Os melhores podcasts de hoje',
            ),
            ListCardSample(
              listData: DataMockShows.dataAllCategories,
              titleSection: 'Todas as categorias',
            ),
            RenderListShows(
              listData: DataMockShows.dataResume,
              boxSize: 'big',
              titleSection: 'Os melhores podcasts de hoje',
            ),
            ListCardSample(
              listData: DataMockShows.dataGenres,
              titleSection: 'Música por gênero',
            ),
          ],
        ),
      ),
    );
  }
}
