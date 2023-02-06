import 'package:flutter/material.dart';
import '../model/card_data.dart';

class GameCard extends StatelessWidget {
  final CardData data;

  const GameCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Icon closeCombatIcon = Icon(
      Icons.dangerous_sharp,
      color: Colors.black,
    );

    return data.isFullSize
        ? Container(
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
            width: 200,
            height: 300,
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
                  width: 175,
                  height: 175,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              data.attackPower.toString(),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: closeCombatIcon,
                          )
                        ],
                      ),
                      Column(),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Container(
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
