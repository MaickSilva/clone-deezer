import 'package:flutter/material.dart';
import 'package:clonedeezer/src/routes.dart';
import 'package:clonedeezer/src/screens/home_tab_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deezer Clone',
      theme: ThemeData(
        fontFamily: 'MabryPro',
      ),
      routes: {
        AppRoutes.HOME: (ctx) => HomeTabScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
