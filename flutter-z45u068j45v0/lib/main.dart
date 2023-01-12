import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const Homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



void main() {
  runApp(MyApp());
}
