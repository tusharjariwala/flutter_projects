import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}
Expanded buildkey({required Color color,required int soundNumber })
{
  return Expanded(
    child: MaterialButton(
      color: color,
      onPressed: (){
        playSound(soundNumber);
      },
    ),
  );
}
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              buildkey(color: Colors.red,soundNumber: 1),
              buildkey(color: Colors.orange,soundNumber: 2),
              buildkey(color: Colors.yellow,soundNumber: 3),
              buildkey(color: Colors.green,soundNumber: 4),
              buildkey(color: Colors.teal,soundNumber: 5),
              buildkey(color: Colors.blue,soundNumber: 6),
              buildkey(color: Colors.purple,soundNumber: 7),



            ],
          ),
        ),
      ),
    );
  }
}
