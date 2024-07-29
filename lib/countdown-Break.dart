import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/round-button.dart';
import 'package:mi_card/globalVar.dart' as globals;
//import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class CountdownBreakPage extends StatefulWidget {
  const CountdownBreakPage({Key? key}) : super(key: key);
  @override
  _CountdownBreakPageState createState() => _CountdownBreakPageState();
}

class _CountdownBreakPageState extends State<CountdownBreakPage>
    with TickerProviderStateMixin {
  late AnimationController controller;

  bool isPlaying = false;

  String get countText {
   // Duration count = controller.duration! * controller.value;
    Duration count = controller.duration! * controller.value;
    return controller.isDismissed
        ? '${controller.duration!.inHours}:${(controller.duration!.inMinutes % 60).toString().padLeft(2, '0')}:${(controller.duration!.inSeconds % 60).toString().padLeft(2, '0')}'
        : '${count.inHours}:${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  double progress = 1.0;
  void notify() {
    if (countText == '0:00:00') {
     // FlutterRingtonePlayer.playNotification();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(hours:globals.breakHours ,minutes:globals.breakSec,seconds: globals.workoutSec),

    );
    controller.reverse(
        from: controller.value == 0 ? 1.0 : controller.value);
    setState(() {
      isPlaying = true;
    });
    controller.addListener(() {
      notify();
      if (controller.isAnimating) {
        setState(() {
          progress = controller.value;
        });
      } else {
        setState(() {
          progress = 1.0;
          isPlaying = false;
        });
      }
    });
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Break timer',
        ),
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.home),
          tooltip: "Stop timer",
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        automaticallyImplyLeading: false,
        // actions: <Widget>[
        //   TextButton(
        //     style: ButtonStyle(
        //         foregroundColor: WidgetStateProperty.all(Colors.black),
        //         shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        //             RoundedRectangleBorder(
        //               borderRadius: BorderRadius.zero,
        //             )
        //         )
        //     ),
        //     onPressed: () {
        //     }, child: Text('Restart'),
        //   ),
        // ],
      ),//AppBar
      backgroundColor: Color(0xfff5fbff),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey.shade300,
                    value: progress,
                    strokeWidth: 6,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (controller.isDismissed) {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: 300,
                          child: CupertinoTimerPicker(
                            initialTimerDuration: controller.duration!,
                            onTimerDurationChanged: (time) {
                              setState(() {
                                controller.duration = time;
                              });
                            },
                          ),
                        ),
                      );
                    }
                  },
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) => Text(
                      countText,
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (controller.isAnimating) {
                      controller.stop();
                      setState(() {
                        isPlaying = false;
                      });
                    } else {
                      controller.reverse(
                          from: controller.value == 0 ? 1.0 : controller.value);
                      setState(() {
                        isPlaying = true;
                      });
                    }
                  },
                  child: RoundButton(
                    icon: isPlaying == true ? Icons.pause : Icons.play_arrow,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.reset();
                    setState(() {
                      isPlaying = false;
                    });
                  },
                  child: RoundButton(
                    icon: Icons.stop,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
