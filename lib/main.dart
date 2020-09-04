import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int keyNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNumber);
        },
        child: Text(''),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, keyNumber: 1),
              buildKey(color: Colors.orange, keyNumber: 2),
              buildKey(color: Colors.yellow, keyNumber: 3),
              buildKey(color: Colors.green, keyNumber: 4),
              buildKey(color: Colors.teal, keyNumber: 5),
              buildKey(color: Colors.blue, keyNumber: 6),
              buildKey(color: Colors.purple, keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
