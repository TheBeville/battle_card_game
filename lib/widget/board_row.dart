import 'package:card_game/widget/small_card.dart';
import 'package:flutter/material.dart';
import '../model/card_data.dart';

class BoardRow extends StatelessWidget {
  final String attackRange;
  final List<CardData> cards;
  const BoardRow({
    Key? key,
    required this.attackRange,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 800,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...cards.map(
            (e) => SmallCard(
              data: e,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
