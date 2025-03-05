import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$num.wav'),
    );
  }

   Container buildWidget({required Color color, required int num}) {
    return Container(
      height: 100,
      color: color,
      child: Center(
        child: TextButton(
          onPressed: () {
            playSound(num);
          },
          child: Text('Click me'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              buildWidget(color: Colors.red, num: 1),
              buildWidget(color: Colors.blue, num: 2),
              buildWidget(color: Colors.green, num: 3),
              buildWidget(color: Colors.yellow, num: 4),
              buildWidget(color: Colors.pink, num: 5),
              buildWidget(color: Colors.brown, num: 6),
              buildWidget(color: Colors.orange, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}

// Center(
//           child: TextButton(
//             onPressed: () {
//               final player = AudioPlayer();
//               player.play(
//                 AssetSource('note1.wav'),
//               );
//             },
//             child: Text('Click me'),
//           ),
//         ),