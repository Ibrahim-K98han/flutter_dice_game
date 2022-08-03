import 'dart:math';

import 'package:flutter/material.dart';
import 'package:part_two_flutter_basic/dice_game.dart';
import 'package:part_two_flutter_basic/listview_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DiceGame(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My First App',style: TextStyle(fontWeight: FontWeight.bold),),
      // ),
      body: ListView(
          children: [
            Image.asset('images/sajek.jpg',width: double.infinity, height: 300.0,fit: BoxFit.cover,),
            //buildTitleSection(),
            buildTitleSectionWithListTile(),
            SizedBox(height: 10,),
            buildNavSection(),
            Padding(
              padding: EdgeInsets.all(16),
              child:Text('Sajek valley is famous for its natural beauty. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable. Sajek valley is famous for its natural beauty. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable. Sajek valley is famous for its natural beauty. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable. Sajek valley is famous for its natural beauty. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable. Sajek valley is famous for its natural beauty. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable. Sajek valley is famous for its natural beauty. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable.',
                  textAlign: TextAlign.justify),
            )
          ],
        ),
    );
  }

  Widget buildNavSection() {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade500,
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [Colors.blue.shade200, Colors.blue.shade900],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 1.0]
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0,10)
          )
        ]
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.call,color: Colors.white,),
                SizedBox(height: 5,),
                Text('CALL',style: TextStyle(color: Colors.white,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Icon(Icons.navigation,color: Colors.white,),
                SizedBox(height: 5,),
                Text('ROUTE',style: TextStyle(color: Colors.white,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Icon(Icons.share,color: Colors.white,),
                SizedBox(height: 5,),
                Text('SHARE',style: TextStyle(color: Colors.white,fontSize: 16),)
              ],
            ),
          ],
        ),
    );
  }

  Widget buildTitleSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sajek Valley', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('Khagrachari, Bangladesh',style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star,color: Colors.orange,),
              Text(90.toString(), style: TextStyle(fontSize: 18),),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTitleSectionWithListTile() {
    return ListTile(
           title: Text('Sajek Valley'),
           subtitle: Text('Khagrachari, Bangladesh'),
           trailing: Row(
             mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star,color: Colors.orange,),
              Text(90.toString(), style: TextStyle(fontSize: 18),),
            ],
          ),
      );
  }
}

