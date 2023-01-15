import 'package:flutter/material.dart';
import '../widget/board_row.dart';

class GameView extends StatefulWidget {
  const GameView({super.key, required this.title});

  final String title;

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 350,
                      child: const Text('Player One'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 350,
                      child: const Text('Player Two'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        BoardRow(attackRange: 'Siege'),
                        SizedBox(
                          height: 2,
                        ),
                        BoardRow(attackRange: 'Ranged'),
                        SizedBox(
                          height: 2,
                        ),
                        BoardRow(attackRange: 'Close Combat'),
                        SizedBox(
                          height: 10,
                        ),
                        BoardRow(attackRange: 'Close Combat'),
                        SizedBox(
                          height: 2,
                        ),
                        BoardRow(attackRange: 'Ranged'),
                        SizedBox(
                          height: 2,
                        ),
                        BoardRow(attackRange: 'Siege'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
