import 'package:card_game/controllers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/game_board.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  final GameController _gameController = GameController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameController, GameState>(
        builder: (context, state) {
          return GameBoard(
            state: state,
            onDraw: _gameController.drawCard,
            changeTurn: _gameController.changeTurn,
          );
        },
        bloc: _gameController,
      ),
    );
  }
}
