import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded colorTabs({Color color, int num}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(num);
          }),
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
              colorTabs(num: 1, color: Colors.red),
              colorTabs(num: 2, color: Colors.orange),
              colorTabs(num: 3, color: Colors.yellow),
              colorTabs(num: 4, color: Colors.green),
              colorTabs(num: 5, color: Colors.teal),
              colorTabs(num: 6, color: Colors.blue),
              colorTabs(num: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
