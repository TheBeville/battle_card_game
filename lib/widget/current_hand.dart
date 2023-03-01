import 'package:flutter/material.dart';
import '../model/card_data.dart';
import 'small_card.dart';

class CurrentHand extends StatefulWidget {
  final List<CardData> cards;
  final void Function(CardData card) onCardTap;

  const CurrentHand({
    required this.cards,
    super.key,
    required this.onCardTap,
  });

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
        children: [
          ...widget.cards.map((e) => SmallCard(
                data: e,
                onTap: () => widget.onCardTap(e),
              ))
        ],
      ),
    );
  }
}
