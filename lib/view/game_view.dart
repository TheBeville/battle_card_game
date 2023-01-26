import 'package:flutter/material.dart';
import '../widget/game_board.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GameBoard(),
    );
  }
}
