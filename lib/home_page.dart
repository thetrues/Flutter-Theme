import 'package:flutter/material.dart';
import 'package:flutter_theme/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Theme"),
      ),
      body: Center(
        child: Switch(value: _value, onChanged: (value){
          setState((){
            _value = value;
            if(_value){
              MyApp.of(context)!.changeTheme(ThemeMode.dark);
            }else{
              MyApp.of(context)!.changeTheme(ThemeMode.light);
            }
          });
        }),
      ),
    );
  }
}
