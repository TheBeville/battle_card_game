import 'package:flutter/material.dart';
import '../model/card_data.dart';
import '../widget/game_card.dart';

class CurrentHand extends StatefulWidget {
  final List<CardData> cards;

  const CurrentHand({required this.cards, super.key});

  @override
  State<CurrentHand> createState() => _CurrentHandState();
}

class _CurrentHandState extends State<CurrentHand> {
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
      height: 135,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [...widget.cards.map((e) => GameCard(data: e))],
      ),
    );
  }
}
