import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers_api.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            toolbarHeight: 100.0,
            title: Center(
              child: Title(
                color: Colors.white,
                child: const Text(
                  "XyloPhone App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ),
          body: const XyloPhone(),
        ),
      ),
    ),
  );
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  void soundPlay(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded _buttons(Color color, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          soundPlay(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buttons(Colors.red, 1),
        _buttons(Colors.orange, 2),
        _buttons(Colors.yellow, 3),
        _buttons(Colors.green, 4),
        _buttons(Colors.teal, 5),
        _buttons(Colors.blue, 6),
        _buttons(Colors.pinkAccent, 7),
      ],
    );
  }
}
