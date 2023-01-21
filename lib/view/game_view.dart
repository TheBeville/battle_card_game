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
      body: Column(
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
    );
  }
}
