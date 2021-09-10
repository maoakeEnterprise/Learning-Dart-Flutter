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
      home: buildHomePage('Je suis le best', context),

    );
  }
}

Widget buildHomePage(String titlevar, BuildContext context){


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


  Widget titlesection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(

      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                      'OESHIN LAKE CAMPGROUND',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    'Kandersted Swtizerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );

  Widget buttons = Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
          Icons.phone,
          color: Colors.blue[500],
      ),
      Text('Yes'),
    ],
  );

  Widget buttonsection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttons,
        buttons,
        buttons,
      ],
    ),
  );

  Widget textsection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text('Lorem ipsum dolor sit amet. Qui quod '
        'iste qui veniam doloribus ea reiciendis atque '
        'eum vitae debitis ea reiciendis dolores ut totam'
        ' dolorem. Eos consequatur fuga hic omnis quia est '
        'magnam incidunt qui minus omnis aut laborum possimus '
        'repudi aperiaut ipsa aderunt rerum.',
      softWrap: true,
    ),
  );

  return Scaffold(
    appBar: AppBar(
      title: const Text('First Devoir'),
    ),
    body: Column(
      children: [
        Image.asset(
          'assets/images/lake.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titlesection,
        buttonsection,
        textsection,
      ],
    ),
  );
}