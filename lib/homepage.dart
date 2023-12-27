import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button(Colors.amber, 1),
            button(Colors.orange, 2),
            button(Colors.teal, 3),
            button(Colors.blue, 4),
            button(Colors.green, 5),
            button(Colors.purple, 6),
            button(Colors.pink, 7)
          ],
        ),
      ),
    );
  }

  button(Color color, int numb) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () async {
          await player.play(
            AssetSource("note$numb.wav"),
          );
        },
      ),
    );
  }
}
