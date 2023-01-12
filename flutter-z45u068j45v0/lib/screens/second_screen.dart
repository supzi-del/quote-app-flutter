import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

class Secondscreen extends StatelessWidget {
  String quotetext;
  String authortext;

  Secondscreen({ Key? key,required this.quotetext, required this.authortext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(quotetext, style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.bottomRight, child: Text("- $authortext",style: TextStyle(fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
  }
}