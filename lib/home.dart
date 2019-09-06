import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _playSound(int _keyNote) {
      final player = AudioCache();
      player.play('note$_keyNote.wav');
    }

    Expanded _buildkey({Color color, int soundNumber}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            _playSound(soundNumber);
          },
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildkey(color: Colors.red, soundNumber: 1),
          _buildkey(color: Colors.orange, soundNumber: 2),
          _buildkey(color: Colors.yellow, soundNumber: 3),
          _buildkey(color: Colors.green, soundNumber: 4),
          _buildkey(color: Colors.blue, soundNumber: 5),
          _buildkey(color: Colors.indigo, soundNumber: 6),
          _buildkey(color: Colors.purple, soundNumber: 7),
          
        ],
      ),
    );
  }
}
