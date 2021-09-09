import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter/widgets.dart';

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning 1',
      home: buildHomePage('Je suis le best'),
    );
  }
}

Widget buildHomePage(String titlevar){

  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500],),
      Icon(Icons.star, color: Colors.green[500],),
      Icon(Icons.star, color: Colors.green[500],),
      Icon(Icons.star, color: Colors.black,),
      Icon(Icons.star, color: Colors.black,),
    ],
  );

  Widget tilesection = Container(

  );

  Widget buttonsection = Container(

  );

  return Scaffold(
    appBar: AppBar(
      title: const Text('First Devoir'),
    ),
    body: Column(
      children: [Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'images/lake.jpg',

                height: 240,
                fit: BoxFit.cover,
              ),
              Text('tilesection '),//
              Text('buttonsection'),
              Text('Textsection'),
            ],
          ),
        ],
      ),]
    ),
  );
}