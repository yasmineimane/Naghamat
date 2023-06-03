import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final player = AudioPlayer();
  void playMusic(int n) {
    player.stop();
    player.play(
      AssetSource('music-$n.mp3'),
    );
  }

  Expanded myButton(int musicNumber, String musicName, Color colorName) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          onPressed: () {
            playMusic(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: colorName,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  musicName,
                  style: TextStyle(
                    fontFamily: 'GreatVibes',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: colorName,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
          child: Text(
            'Naghamat',
            style: TextStyle(
                fontFamily: 'GreatVibes',
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          myButton(1, 'Samsung Galaxy', Colors.red),
          myButton(2, 'Samsung Note', Colors.green),
          myButton(3, 'Nokia', Colors.black),
          myButton(4, 'iPhone 11', Colors.amber),
          myButton(5, 'Whatsapp', Colors.blue),
          myButton(6, 'Samsung S7', Colors.purple),
          myButton(7, 'iPhone 6', Colors.black),
        ],
      ),
    );
  }
}
