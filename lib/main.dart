import 'package:flutter/material.dart';
import 'package:mi_card/square.dart';
import 'package:mi_card/startPage.dart';
import 'package:mi_card/countdown-workout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/workout': (context) => CountdownWorkoutPage(),


      },

    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home Page',
        ),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,

      ),//AppBar
      backgroundColor: Color(0xfff5fbff),
      body:
        ListView(
      children: [
        startSquare(),
       // row_white(),
        MySquare(),
        MySquaremin(),
        MySquareBreak(),
        Dropdown1(),
        Dropdown2(),
        Dropdown3Rounds(),
      ],
    ),

      );

  }
}
