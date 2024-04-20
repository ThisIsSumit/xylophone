

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
 
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('_Heeriye(PagalWorld.com.sb).mp3'));
            },
            child: const Text("Play Sound"),
          ),
        ],
      ),
    );
  }
}


