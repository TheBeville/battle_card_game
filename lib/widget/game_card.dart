import 'package:flutter/material.dart';
import '../model/card_data.dart';
import './small_card.dart';

class GameCard extends StatelessWidget {
  final CardData data;

  const GameCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmallCard(data: data, onTap: () {});
  }
}
