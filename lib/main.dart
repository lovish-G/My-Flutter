import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
     @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch:Colors.blue),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/" :(context) => MyApp(),
      },
       );
  }
}
