import 'package:card_game/temp_card_database.dart';
import 'package:flutter/material.dart';
import '../widget/game_card.dart';

class CurrentHand extends StatefulWidget {
  const CurrentHand({super.key});

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
        children: const [
          GameCard(data: Cards.spear),
          GameCard(data: Cards.archer),
          GameCard(data: Cards.catapult),
          GameCard(data: Cards.trebuchet),
          GameCard(data: Cards.scout),
        ],
      ),
    );
  }
}
