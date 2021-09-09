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

  return Scaffold(
    appBar: AppBar(
      title: Text(titlevar),
    ),
    body: Center(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            stars,
          ],
        ),


      ),
    ),
  );
}