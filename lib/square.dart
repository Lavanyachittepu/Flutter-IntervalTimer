import 'package:flutter/material.dart';
import 'package:mi_card/countdown-page.dart';
import 'package:mi_card/countdown-workout.dart';
import 'package:mi_card/globalVar.dart' as globals;
//import 'package:flutter_picker/flutter_picker.dart';
import 'package:numberpicker/numberpicker.dart';

import 'globalVar.dart';


class MySquare extends StatefulWidget {
  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {

  String hvalue = 'Hours';
  String mvalue = 'Minutes';
  String svalue = 'Seconds';
  int dropdownvalue1=0;int dropdownvalue2=0;int dropdownvalue3=0;
  var hours =['Hours','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23'];
  var min =['Minutes','1','2','3','4'];
  var sec =['Seconds','1','2','3','4'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
       // color: Colors.black,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
    child:Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start  ,
    children: [
      SizedBox(width:40),
      Text('Warm up time ',style: const TextStyle(fontSize: 24, color: Colors.white)),
      SizedBox(width:40),
      Text('Hours ',style: const TextStyle(fontSize: 18, color: Colors.white)),
      SizedBox(width:40),
      DropdownButton<int>(
             // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),
        value: dropdownvalue1,
        items: <int>[0,1, 2, 3, 4,5,6,7].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                 onChanged: (int? newVal) {
                   setState(
                         () {
                           dropdownvalue1 = newVal!;
                           globals.warmupHours=dropdownvalue1;
                     },
                   );
                  },
              ),
      SizedBox(width:40),
      Text('Min ',style: const TextStyle(fontSize: 18, color: Colors.white)),
      SizedBox(width:40),
      DropdownButton<int>(
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),
        value: dropdownvalue2,
        items: <int>[0,1, 2, 3, 4,5,6,7,8,9,10].map((int items) {
          return DropdownMenuItem<int>(
            value:items,
            child: Text(items.toString(),style: TextStyle(color: Colors.green)),
          );
        }).toList(),
        onChanged: (int? newVal) {
          setState(
                () {
              dropdownvalue2 = newVal!;
              globals.warmupMin=dropdownvalue2;
            },
          );
        },
      ),
      SizedBox(width:40),
      Text('Sec ',style: const TextStyle(fontSize: 18, color: Colors.white)),
      SizedBox(width:40),
      DropdownButton<int>(
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),
        value: dropdownvalue3,
        items: <int>[0,1, 2, 3, 4,5,6,7].map((int items) {
          return DropdownMenuItem<int>(
            value:items,
            child: Text(items.toString(),style: TextStyle(color: Colors.green)),
          );
        }).toList(),
        onChanged: (int? newVal) {
          setState(
                () {
              dropdownvalue3 = newVal!;
              globals.warmupSec=dropdownvalue3;
            },
          );
        },
      ),
    ]
      ),
      ),
    );
      }

}

class MySquaremin extends StatefulWidget {
  @override
  State<MySquaremin> createState() => _MySquareStateMin();
}

class _MySquareStateMin extends State<MySquaremin> {
  int dropdownvalue1=0;int dropdownvalue2=0;int dropdownvalue3=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
       // color: Colors.black,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
        child:Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width:40),
              Text('Workout time ',style: const TextStyle(fontSize: 24, color: Colors.white)),
              SizedBox(width:40),
              Text('Hours ',style: const TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(width:40),
              DropdownButton<int>(
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                value: dropdownvalue1,
                items: <int>[0,1, 2, 3, 4,5,6,7].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                onChanged: (int? newVal) {
                  setState(
                        () {
                      dropdownvalue1 = newVal!;
                      globals.workoutHours=dropdownvalue1;
                    },
                  );
                },
              ),
              SizedBox(width:40),
              Text('Min ',style: const TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(width:40),
              DropdownButton<int>(
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                value: dropdownvalue2,
                items: <int>[0,1, 2, 3, 4,5,6,7,8,9,10].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                onChanged: (int? newVal) {
                  setState(
                        () {
                      dropdownvalue2 = newVal!;
                      globals.workoutMin=dropdownvalue2;
                    },
                  );
                },
              ),
              SizedBox(width:40),
              Text('Sec ',style: const TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(width:40),
              DropdownButton<int>(
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                value: dropdownvalue3,
                items: <int>[0,1, 2, 3, 4,5,6,7].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                onChanged: (int? newVal) {
                  setState(
                        () {
                      dropdownvalue3 = newVal!;
                      globals.workoutSec=dropdownvalue3;
                    },
                  );
                },
              ),
            ]
        ),
      ),
    );
  }

}


class MySquareBreak extends StatefulWidget {
  @override
  State<MySquareBreak> createState() => _MySquareStateBreak();
}

class _MySquareStateBreak extends State<MySquareBreak> {
  int dropdownvalue1=0;int dropdownvalue2=0;int dropdownvalue3=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
      // color: Colors.black,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
        child:Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width:40),
              Text('Break time     ',style: const TextStyle(fontSize: 24, color: Colors.white)),
              SizedBox(width:40),
              Text('Hours ',style: const TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(width:40),
              DropdownButton<int>(
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                value: dropdownvalue1,
                items: <int>[0,1, 2, 3, 4,5,6,7].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                onChanged: (int? newVal) {
                  setState(
                        () {
                      dropdownvalue1 = newVal!;
                      globals.breakHours=dropdownvalue1;
                    },
                  );
                },
              ),
              SizedBox(width:40),
              Text('Min ',style: const TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(width:40),
              DropdownButton<int>(
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                value: dropdownvalue2,
                items: <int>[0,1, 2, 3, 4,5,6,7,8,9,10].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                onChanged: (int? newVal) {
                  setState(
                        () {
                      dropdownvalue2 = newVal!;
                      globals.breakMin=dropdownvalue2;
                    },
                  );
                },
              ),
              SizedBox(width:40),
              Text('Sec ',style: const TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(width:40),
              DropdownButton<int>(
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                value: dropdownvalue3,
                items: <int>[0,1, 2, 3, 4,5,6,7].map((int items) {
                  return DropdownMenuItem<int>(
                    value:items,
                    child: Text(items.toString(),style: TextStyle(color: Colors.green)),
                  );
                }).toList(),
                onChanged: (int? newVal) {
                  setState(
                        () {
                      dropdownvalue3 = newVal!;
                      globals.breakSec=dropdownvalue3;
                    },
                  );
                },
              ),
            ]
        ),
      ),
    );
  }

}


class startSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
       // color: Colors.black,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
        child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.green, // Background color
            textStyle: TextStyle(fontSize: 16),
        ),// Text style
            onPressed: () {

             Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> CountdownWorkoutPage()),
          );
            }, child: Text('Start'),
        ),

      ),
    );

  }
}


class row_white extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      color: Colors.black,
    );
  }}

class RowSquare1 extends StatefulWidget {
  @override

  State<RowSquare1> createState() => _RowSquare1State();
}

class _RowSquare1State extends State<RowSquare1> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
      child:Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: 200.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('$_counter rounds',style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.left),
              ),
            )),

        // Container(height: 100,color:Colors.black,),
        SizedBox(
          width: 42.0,
          height: 42.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          child: IconButton(
            icon: const Icon(Icons.add,size: 35.0),
            onPressed: () { _incrementCounter();

            }
          ),
        ),
        ),

        SizedBox(
          width: 42.0,
          height: 42.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: IconButton(
                icon: const Icon(Icons.remove,size: 35.0),
                onPressed: () { _decrementCounter();

                }
            ),
          ),
        ),

      ],
    ),
    );
  }

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }
  void _decrementCounter() {
    if(_counter>0){
    _counter--;
    setState(() {});}
  }

}

class RowSquare2 extends StatefulWidget {
  @override
  State<RowSquare2> createState() => _RowSquare2State();
}

class _RowSquare2State extends State<RowSquare2> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child:Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 200.0,
              height: 42.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('$_counter Seconds Per Round ',style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.left),
                ),
              )),

          // Container(height: 100,color:Colors.black,),
          SizedBox(
            width: 42.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: IconButton(
                  icon: const Icon(Icons.add,size: 35.0),
                  onPressed: () { _incrementCounter();
                  }
              ),
            ),
          ),

          SizedBox(
            width: 42.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: IconButton(
                  icon: const Icon(Icons.remove,size: 35.0),
                  tooltip: 'Increase volume by 10',
                  onPressed: () { _decrementCounter();
                  }
              ),
            ),
          ),

        ],
      ),
    );
  }

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }
  void _decrementCounter() {
    if(_counter>0){
      _counter--;
      setState(() {});}
  }

}
class RowSquare3 extends StatefulWidget {
  @override
  State<RowSquare3> createState() => _RowSquare3State();
}

class _RowSquare3State extends State<RowSquare3> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child:Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 200.0,
              height: 42.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                ),
                child: Center(child: Text('$_counter Seconds Between Rounds ',style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.left)),
              )),

          // Container(height: 100,color:Colors.black,),
          SizedBox(
            width: 42.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: IconButton(
                  icon: const Icon(Icons.add,size: 35.0),
                  tooltip: 'Increase volume by 10',
                  onPressed: () { _incrementCounter();
                  }
              ),
            ),
          ),

          SizedBox(
            width: 42.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: IconButton(
                  icon: const Icon(Icons.remove,size: 35.0),
                  tooltip: 'Increase volume by 10',
                  onPressed: () { _decrementCounter();
                  }
              ),
            ),
          ),

        ],
      ),
    );
  }

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }
  void _decrementCounter() {
    if(_counter>0){
      _counter--;
      setState(() {});}
  }

}

class RowSquare4 extends StatefulWidget {
  @override
  State<RowSquare4> createState() => _RowSquare4State();
}

class _RowSquare4State extends State<RowSquare4> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child:Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 200.0,
              height: 42.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                ),
                child: Center(child: Text('$_counter Seconds Before Starting ',style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.left)),
              )),

          // Container(height: 100,color:Colors.black,),
          SizedBox(
            width: 42.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: IconButton(
                  icon: const Icon(Icons.add,size: 35.0),
                  tooltip: 'Increase volume by 10',
                  onPressed: () { _incrementCounter();
                  globals.secBeforeStart =_counter;
                  }
              ),
            ),
          ),
          SizedBox(
            width: 42.0,
            height: 42.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: IconButton(
                  icon: const Icon(Icons.remove,size: 35.0),
                  tooltip: 'Increase volume by 10',
                  onPressed: () { _decrementCounter();
                  globals.secBeforeStart =_counter;
                  }
              ),
            ),
          ),

        ],
      ),
    );
  }

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }
  void _decrementCounter() {
    if(_counter>0){
      _counter--;
      setState(() {});}
  }

}


class Dropdown1 extends StatefulWidget {
  @override
  State<Dropdown1> createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  String value = 'Snow';
  var items = ['Snow','Bell','Nugget','Lemonade'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       // color: Colors.black,
        height: 100,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
        child:Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox( width:40),
            SizedBox(child: Text('Rounds Start Sound Effect ',style: const TextStyle(fontSize: 20, color: Colors.white),textAlign: TextAlign.start)),

            SizedBox( width:40),
            DropdownButton(

              // Initial Value
              value: value,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items,style: TextStyle(color: Colors.green)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  value = newValue!;
                });
              },
            ),

            // List of items in our dropdown menu

        ],
        ),
      ),
    );
  }


}

class Dropdown2 extends StatefulWidget {
  @override
  State<Dropdown2> createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  String value = 'Snow';
  var items = ['Snow','Bell','Nugget','Lemonade'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        // color: Colors.black,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox( width:40),
            SizedBox(child: Text('Rounds End Sound Effect ',style: const TextStyle(fontSize: 20, color: Colors.white),textAlign: TextAlign.start)),
            SizedBox( width:40),
            // Container(height: 100,color:Colors.black,),
            DropdownButton(

              // Initial Value
              value: value,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items,style: TextStyle(color: Colors.green)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  value = newValue!;
                });
              },
            ),

            // List of items in our dropdown menu


          ],
        ),




      ),
    );
  }


}

class Dropdown3Rounds extends StatefulWidget {
  @override
  State<Dropdown3Rounds> createState() => _Dropdown3Rounds();
}

class _Dropdown3Rounds extends State<Dropdown3Rounds> {
  final total_rounds = TextEditingController();

  @override
  void initState() {
    total_rounds.addListener(() {     // Handle the text field value change here
      int i = int.parse(total_rounds.text);
      globals.totalRounds = i;
      print("Value: ${globals.totalRounds}");
      // You can also use setState to rebuild the widget if needed
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        // color: Colors.black,
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox( width:40),
            SizedBox(child: Text('Total Rounds                      ',style: const TextStyle(fontSize: 20, color: Colors.white),textAlign: TextAlign.start)),
            SizedBox( width:40),
            SizedBox(
                width: 100.0,
                height: 42.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                  ),
                  child: Center(
                    child: TextFormField(
                      controller: total_rounds,
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      style:
                      new TextStyle(fontSize: 22.0, color: Colors.white),
                      decoration: new InputDecoration(
                        filled: true,
                        fillColor: Colors.green,

                      ),

                    ),
                  ),
                )),
            // Container(height: 100,color:Colors.black,),


            // List of items in our dropdown menu


          ],
        ),




      ),
    );
  }


}

class numberPicker1 extends StatefulWidget {
  @override
  State<numberPicker1> createState() => _numberPicker1State();
}

class _numberPicker1State extends State<numberPicker1> {
  int Hours = 00;int Min = 00;int Sec = 00;
  @override
  Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           alignment: Alignment.topLeft,
           height: 200,

               color: Colors.black,
               child:Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // SizedBox(
            //     width: 200.0,
            //     height: 60.0,
            //     child: DecoratedBox(
            //       decoration: BoxDecoration(
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text('Select Warm up time',style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.left),
            //       ),
            //     )),
            Column(
              children: <Widget>[
                SizedBox(height: 16),
                Text('Hours ',style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.left),
                NumberPicker(
                  value: Hours,
                  minValue: 0,
                  maxValue: 24,
                  zeroPad:true,
                  infiniteLoop: true,
                  itemWidth: 30,itemHeight: 30,
                  onChanged: (value) => setState(() => Hours = value),
                  textStyle: const TextStyle(color: Colors.grey ,fontSize: 15),
                  selectedTextStyle: const TextStyle(color: Colors.white ,fontSize: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.white,),
                      bottom: BorderSide(color: Colors.white,),
                    )
                    ,
                  ),
                ),

              ],
                ),
            // Column(
            //   children: <Widget>[
            //     SizedBox(height: 16),
            //     Text('Min', style: Theme.of(context).textTheme.labelSmall,selectionColor: Colors.white),
            //     NumberPicker(
            //       value: Min,
            //       minValue: 1,
            //       maxValue: 24,
            //       zeroPad:true,
            //       infiniteLoop: true,
            //       itemWidth: 30,itemHeight: 30,
            //       onChanged: (value) => setState(() => Min = value),
            //       textStyle: const TextStyle(color: Colors.grey ,fontSize: 20),
            //       selectedTextStyle: const TextStyle(color: Colors.white ,fontSize: 30),
            //       decoration: BoxDecoration(
            //         border: Border(
            //           top: BorderSide(color: Colors.white,),
            //           bottom: BorderSide(color: Colors.white,),
            //         )
            //         ,
            //       ),
            //     ),
            //
            //   ],
            // ),
            // Column(
            //   children: <Widget>[
            //     SizedBox(height: 16),
            //     Text('Sec', style: Theme.of(context).textTheme.labelSmall,selectionColor: Colors.white),
            //     NumberPicker(
            //       value: Sec,
            //       minValue: 1,
            //       maxValue: 60,
            //       zeroPad:true,
            //       infiniteLoop: true,
            //       itemWidth: 60,itemHeight: 60,
            //       onChanged: (value) => setState(() => Sec = value),
            //       textStyle: const TextStyle(color: Colors.grey ,fontSize: 20),
            //       selectedTextStyle: const TextStyle(color: Colors.white ,fontSize: 30),
            //       decoration: BoxDecoration(
            //         border: Border(
            //           top: BorderSide(color: Colors.white,),
            //           bottom: BorderSide(color: Colors.white,),
            //         )
            //         ,
            //       ),
            //     ),
            //
            //   ],
            // ),

              ],


               ),
             ),
       );
  }
}




