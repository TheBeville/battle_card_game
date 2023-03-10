import 'package:card_game/model/card_data.dart';
import 'package:card_game/utils.dart';
import 'package:flutter/material.dart';
import '../controllers/game_controller.dart';
import 'board_row.dart';
import 'current_hand.dart';

class GameBoard extends StatefulWidget {
  final GameState state;

  final VoidCallback onDraw;
  final void Function(int player, CardData card) onPlayCard;
  final VoidCallback changeTurn;

  const GameBoard({
    required this.state,
    required this.onDraw,
    required this.onPlayCard,
    required this.changeTurn,
    super.key,
  });

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
              height: 800,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 340,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Opponent'),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('Score: ${widget.state.players.last.score}'),
                      ],
                    ),
                  ),
                  Container(
                    height: 460,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text('Player'),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Score: ${widget.state.players.first.score}'),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: widget.onDraw,
                              child: const Text('Draw'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ElevatedButton(
                              onPressed: widget.changeTurn,
                              child: const Text('Change Turn'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                      cards: widget.state.players.last.board.siegeCards,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Ranged',
                      cards: widget.state.players.last.board.mediumCards,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Close Combat',
                      cards: widget.state.players.last.board.closeCards,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    BoardRow(
                      attackRange: 'Close Combat',
                      cards: widget.state.players.first.board.closeCards,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Ranged',
                      cards: widget.state.players.first.board.mediumCards,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    BoardRow(
                      attackRange: 'Siege',
                      cards: widget.state.players.first.board.siegeCards,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CurrentHand(
                      cards: widget.state.players.first.hand,
                      onCardTap: (card) {
                        if (widget.state.turn == 0) {
                          widget.onPlayCard(0, card);
                          widget.changeTurn();
                        }
                      },
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
