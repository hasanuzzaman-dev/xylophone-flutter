import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  playSound(1);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  playSound(2);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.brown),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  playSound(3);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  playSound(4);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  playSound(5);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  playSound(6);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  playSound(7);
                },
                child: Text("Click Me"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
