import 'package:flutter/material.dart';
import 'package:clonedeezer/src/components/listview/destaque/render_list_destaque.dart';
import 'package:clonedeezer/src/utilities/mocks/music.dart';
import 'package:clonedeezer/src/components/listview/sample/render_list_sample.dart';
import 'package:clonedeezer/src/components/listview/music/render_list.dart';
import 'package:clonedeezer/src/components/title/title_screen.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(
            title: 'Música',
            padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 15),
          ),
          RenderListMusic(
            listData: DataMockMusic.dataListWithFlow,
            titleSection: 'Para você ouvir',
            cardStyle: 'padrao',
            positionPlay: 'center',
            titleHasIcon: false,
          ),
          RenderListMusic(
            listData: DataMockMusic.dataPlaylistRecommended,
            titleSection: 'Playlists recomendadas',
            cardStyle: 'padrao',
            positionPlay: 'bottom',
            titleHasIcon: false,
          ),
          ListCardSample(
            listData: DataMockMusic.dataGenres,
            titleSection: 'Música por gênero',
          ),
          RenderListMusic(
            listData: DataMockMusic.dataReleasesRecommended,
            titleSection: 'Lançamentos recomendados',
            cardStyle: 'padrao',
            positionPlay: 'bottom',
          ),
          RenderListMusic(
            listData: DataMockMusic.dataYouMusicTherapy,
            titleSection: 'Sua terapia musical',
            cardStyle: 'padrao',
            positionPlay: 'bottom',
          ),
          ListCardDestaque(
            listData: DataMockMusic.dataListDestaques,
            titleSection: 'Destaque',
          ),
          RenderListMusic(
            listData: DataMockMusic.dataAtHomeWithArtists,
            titleSection: 'Em casa com os artistas',
            cardStyle: 'padrao',
            positionPlay: 'bottom',
          ),
          ListCardSample(
            listData: DataMockMusic.dataMusicPerMood,
            titleSection: 'Música por Mood',
          ),
        ],
      ),
    );
  }
}
