import 'package:flutter/material.dart';
import '../model/card_data.dart';

class SmallCard extends StatelessWidget {
  final CardData data;
  final VoidCallback? onTap;
  final double height;

  const SmallCard({
    Key? key,
    required this.data,
    this.onTap,
    this.height = 125,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = height * 4 / 5;

    const Icon closeCombatIcon = Icon(
      Icons.dangerous_sharp,
      color: Colors.black,
      size: 15,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF7c5c34),
          image: const DecorationImage(
            image: AssetImage('lib/assets/card_background.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            width: 4,
          ),
          borderRadius: BorderRadius.circular(11),
        ),
        width: width,
        height: height * 6 / 5,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(data.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              width: width,
              height: height,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            data.attackPower.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white70,
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
            ),
          ],
        ),
      ),
    );
  }
}
