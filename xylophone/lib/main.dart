import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XylophoneKeys(),
        ),
      ),
    );
  }
}

class XylophoneKeys extends StatelessWidget {
  XylophoneKeys({Key? key}) : super(key: key);
  final AudioCache audioCache = AudioCache();

  playAudioLocal(int keyNumber) async {
    await audioCache.play('note$keyNumber.wav');
  }

  Widget _buildKey({required Color color, required int keyNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playAudioLocal(keyNumber);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildKey(color: Colors.red, keyNumber: 1),
        _buildKey(color: Colors.orange, keyNumber: 2),
        _buildKey(color: Colors.yellow, keyNumber: 3),
        _buildKey(color: Colors.green, keyNumber: 4),
        _buildKey(color: Colors.lightBlueAccent, keyNumber: 5),
        _buildKey(color: Colors.blue, keyNumber: 6),
        _buildKey(color: Colors.purple, keyNumber: 7),
      ],
    );
  }
}
