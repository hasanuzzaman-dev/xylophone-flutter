import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String btnText}){
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$btnText'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
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
              buildKey(color: Colors.red, soundNumber: 1, btnText: 'Button 1'),
              buildKey(color: Colors.green, soundNumber: 2, btnText: 'Button 2'),
              buildKey(color: Colors.grey, soundNumber: 3, btnText: 'Button 3'),
              buildKey(color: Colors.purple, soundNumber: 4, btnText: 'Button 4'),
              buildKey(color: Colors.pinkAccent, soundNumber: 5, btnText: 'Button 5'),
              buildKey(color: Colors.blue, soundNumber: 6, btnText: 'Button 6'),
              buildKey(color: Colors.blueGrey, soundNumber: 7, btnText: 'Button 7'),


            ],
          ),
        ),
      ),
    );
  }
}
