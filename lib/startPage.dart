import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_card/square.dart';
import 'package:mi_card/main.dart';
import 'package:mi_card/globalVar.dart' as globals;

void main() {
  runApp(startPage());
}


class startPage extends StatefulWidget {

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds:globals.totalRounds),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>MyHomePage()))
    );
  }
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 0,
                  leading: IconButton(icon: Icon(Icons.timer_off_outlined),
                        tooltip: "Stop timer",
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                  automaticallyImplyLeading: false,
                  title: Text('Stop Timer'),
                  actions: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(Colors.white),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              )
                          )
                      ),
                      onPressed: () {
                      }, child: Text('Restart'),
                    ),
                    ],
            ),//AppBar
          body: ListView(
            children: [
              MySquare(),
                         ],
          ),

          ),
        );

  }
}