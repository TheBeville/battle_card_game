import 'package:flutter/material.dart';
import '../model/card_data.dart';

class GameCard extends StatelessWidget {
  final CardData data;

  const GameCard({Key? key, required this.data}) : super(key: key);

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
      width: 100,
      height: 170,
      child: Column(
        children: [
          Text(
            data.title,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(data.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            width: 150,
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
