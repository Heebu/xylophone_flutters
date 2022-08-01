import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void toneKeys(int soundNumber) {
    final AudioCache player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKeys(
      {required Color color, required int soundNumber, required int typeKey}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          toneKeys(soundNumber);
        },
        child: Text(
          'Play me $typeKey',
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeys(color: Colors.red, typeKey: 1, soundNumber: 1),
              buildKeys(color: Colors.blue, typeKey: 2, soundNumber: 2),
              buildKeys(color: Colors.green, typeKey: 3, soundNumber: 3),
              buildKeys(color: Colors.pink, typeKey: 4, soundNumber: 4),
              buildKeys(color: Colors.purple, typeKey: 5, soundNumber: 5),
              buildKeys(color: Colors.red, typeKey: 6, soundNumber: 6),
              buildKeys(color: Colors.yellow, typeKey: 7, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
