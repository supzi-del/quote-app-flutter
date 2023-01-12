import 'package:flutter/material.dart';
import 'package:flutter_app/screens/second_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
//setstate to appear quote on main screen and stateful widget
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: 
          ElevatedButton(onPressed: () async { 
            var url = Uri.parse('https://api.quotable.io/random');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');

            var data = jsonDecode(response.body);

            String quote = data["content"];
            String author = data["author"];

            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Secondscreen(quotetext: quote,authortext: author,)));
           },//on pressed
          child: Text("Get a quote!"),
          ),
        ),
      ),
    );
  }
}