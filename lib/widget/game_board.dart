import 'package:flutter/material.dart';
import 'board_row.dart';
import 'current_hand.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

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
                children: const [
                  Text('Player One'),
                  Text('Player Two'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    BoardRow(attackRange: 'Siege'),
                    SizedBox(
                      height: 1,
                    ),
                    BoardRow(attackRange: 'Ranged'),
                    SizedBox(
                      height: 1,
                    ),
                    BoardRow(attackRange: 'Close Combat'),
                    SizedBox(
                      height: 5,
                    ),
                    BoardRow(attackRange: 'Close Combat'),
                    SizedBox(
                      height: 1,
                    ),
                    BoardRow(attackRange: 'Ranged'),
                    SizedBox(
                      height: 1,
                    ),
                    BoardRow(attackRange: 'Siege'),
                    SizedBox(
                      height: 10,
                    ),
                    CurrentHand(),
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
