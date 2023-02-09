import 'package:flutter/material.dart';
import '../widget/game_card.dart';
import '../model/cards.dart';

// Replace with HomeView() as '/' in router settings to debug/view card

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Card View'),
            GameCard(data: Cards.archer),
          ],
        ),
      ),
    );
  }
}
