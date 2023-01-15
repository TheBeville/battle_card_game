import 'package:flutter/material.dart';
import './view/game_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battle Cards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameView(title: 'Battle Cards'),
    );
  }
}
