import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  Future<void> playSound(int soundnum) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$soundnum.mov'),
    );
  }

  Expanded buildkey({required Color color, required int colorNum}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(colorNum);
          },
          child: const Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    return Center(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(color: const Color.fromARGB(255, 255, 1, 1), colorNum: 1),
            buildkey(
                color: const Color.fromARGB(255, 255, 124, 1), colorNum: 2),
            buildkey(
                color: const Color.fromARGB(255, 255, 242, 1), colorNum: 3),
            buildkey(color: const Color.fromARGB(255, 1, 255, 1), colorNum: 4),
            buildkey(
                color: const Color.fromARGB(255, 1, 213, 255), colorNum: 5),
            buildkey(color: const Color.fromARGB(255, 1, 120, 255), colorNum: 6)
          ],
        ),
      ),
    );
  }
}
