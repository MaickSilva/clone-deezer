import 'package:flutter/material.dart';
import 'package:clonedeezer/src/screens/music_screen.dart';
import 'package:clonedeezer/src/screens/shows_screen.dart';
import 'package:clonedeezer/src/screens/favorite_screen.dart';
import 'package:clonedeezer/src/screens/search_screen.dart';
import 'package:clonedeezer/src/utilities/utils.dart' as utils;
import 'package:flutter_svg/flutter_svg.dart';

class HomeTabScreen extends StatefulWidget {
  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  int _selectedScreenIndex = 0;

  static List<dynamic> _widgetOptions = <Widget>[
    MusicScreen(),
    ShowsScreen(),
    FavoriteScreen(),
    SearchScreen(),
  ];

  void _selectScreen(int index) => setState(() => _selectedScreenIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utils.createColor(Color(utils.primaryColor)),
      body: _widgetOptions.elementAt(_selectedScreenIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icon-music.svg',
              color: Colors.white,
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icon-music-selected.svg',
              color: Colors.white,
            ),
            title: Text('Música'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icon-mic.svg',
              color: Colors.white,
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icon-mic-selected.svg',
              color: Colors.white,
            ),
            title: Text('Shows'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icon-favorite.svg',
              color: Colors.white,
            ),
             activeIcon: SvgPicture.asset(
              'assets/images/icon-favorite-selected.svg',
              color: Colors.white,
            ),
            title: Text('Favoritos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Busca'),
          ),
        ],
        onTap: _selectScreen,
        backgroundColor: utils.createColor(
          Color(utils.secondaryColor).withAlpha(220),
        ),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
