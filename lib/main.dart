import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                noteButton(1, Colors.red),
                noteButton(2, Colors.orange),
                noteButton(3, Colors.yellow),
                noteButton(4, Colors.lightGreen),
                noteButton(5, Colors.green),
                noteButton(6, Colors.blue),
                noteButton(7, Colors.purple)
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButton noteButton(int value, Color color) {
    return TextButton(
      onPressed: () {
        _playSound(value);
      },
      child: Container(
        width: 100,
        height: 40,
        color: color,
      ),
    );
  }
}

void _playSound(int value) {
  final player = AudioCache();
  player.play('note$value.wav');
}
