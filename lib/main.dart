import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              noteButton(1, Colors.red),
              noteButton(2, Colors.orange),
              noteButton(3, Colors.yellow),
              noteButton(4, Colors.lightGreen),
              noteButton(5, Colors.green),
              noteButton(6, Colors.blue),
              noteButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded noteButton(int value, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          _playSound(value);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}

void _playSound(int value) {
  final player = AudioCache();
  player.play('note$value.wav');
}
