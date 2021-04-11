import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class AudioPlayerScreen extends StatefulWidget {
  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {

  void playSound(int audioNumber) {
    final AudioCache player = AudioCache(prefix: 'assets/notes/');
    player.play('assets_note$audioNumber.wav');
  }

  Expanded buildButton(Color color, int audioNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          // foregroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(audioNumber);
          print(audioNumber);
        },
        child: Text('Click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(Colors.red, 1),
            buildButton(Colors.pink, 2),
            buildButton(Colors.green, 3),
            buildButton(Colors.red, 4),
            buildButton(Colors.yellow, 5),
            buildButton(Colors.black, 6),
            buildButton(Colors.red, 7),
          ],
        ),
      ),
    );
  }
}
