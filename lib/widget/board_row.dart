import 'package:flutter/material.dart';

class BoardRow extends StatelessWidget {
  final String attackRange;
  const BoardRow({Key? key, required this.attackRange}) : super(key: key);

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
      child: Center(
        child: Text(attackRange),
      ),
    );
  }
}
