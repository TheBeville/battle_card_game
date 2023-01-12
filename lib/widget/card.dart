import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String title;

  const GameCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF7c5c34),
        image: const DecorationImage(
          image: AssetImage('lib/assets/card_background.png'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          width: 6,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 175,
      height: 250,
      child: Column(
        children: [
          Text(title),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage('lib/assets/trebuchet.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: 150,
            height: 100,
          ),
          Row(
            children: [
              Column(),
              Column(),
            ],
          ),
        ],
      ),
    );
  }
}
