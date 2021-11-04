import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
  static _MyAppState? of(BuildContext context) => context.findRootAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;
      void changeTheme(ThemeMode themeMode){
        setState((){
          _themeMode = themeMode;
        });
      }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Theme Change",
      themeMode: _themeMode,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );

//data
  }
}
