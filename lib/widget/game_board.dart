import 'package:flutter/material.dart';
import '../controllers/game_controller.dart';
import 'board_row.dart';
import 'current_hand.dart';

class GameBoard extends StatefulWidget {
  final GameState state;

  final VoidCallback onDraw;
  final VoidCallback changeTurn;

  const GameBoard(
      {required this.state,
      required this.onDraw,
      required this.changeTurn,
      super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 760,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Opponent'),
                  const Text('Player'),
                  ElevatedButton(
                    onPressed: widget.onDraw,
                    child: const Text('Draw'),
                  ),
                  ElevatedButton(
                    onPressed: widget.changeTurn,
                    child: const Text('Change Turn'),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    BoardRow(
                      attackRange: 'Siege',
                      cards: widget.state.players.first.board,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Ranged',
                      cards: widget.state.players.first.board,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Close Combat',
                      cards: widget.state.players.first.board,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    BoardRow(
                      attackRange: 'Close Combat',
                      cards: widget.state.players.first.board,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Ranged',
                      cards: widget.state.players.first.board,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Siege',
                      cards: widget.state.players.first.board,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CurrentHand(
                      cards: widget.state.players.first.hand,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
