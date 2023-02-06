import 'package:flutter/material.dart';
import '../model/card_data.dart';

class SmallCard extends StatelessWidget {
  final CardData data;

  const SmallCard({Key? key, required this.data}) : super(key: key);

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
          width: 4,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 100,
      height: 150,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(data.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            width: 100,
            height: 125,
          ),
        ],
      ),
    );
  }
}
