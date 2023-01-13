class CardData {
  final String title;
  final String imagePath;
  final bool isUnitCard;
  final String? attackRange;
  final int? attackPower;

  const CardData({
    required this.title,
    required this.imagePath,
    required this.isUnitCard,
    required this.attackRange,
    required this.attackPower,
  });
}
