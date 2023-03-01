class CardData {
  final String title;
  final String imagePath;
  final bool isUnitCard;
  final int? attackPower;
  final bool isFullSize;
  final CardType type;

  const CardData({
    required this.title,
    required this.imagePath,
    required this.isUnitCard,
    required this.attackPower,
    required this.isFullSize,
    required this.type,
  });
}

enum CardType {
  close,
  medium,
  siege,
  spy,
  ability,
}
