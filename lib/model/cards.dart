import 'card_data.dart';

class Deck {
  static const closeCards = [
    Cards.knight,
    Cards.swordsman,
    Cards.spear,
  ];

  static const rangedCards = [
    Cards.longbow,
    Cards.archer,
    Cards.javelin,
  ];

  static const siegeCards = [
    Cards.trebuchet,
    Cards.catapult,
    Cards.balista,
  ];

  static const spyCards = [
    Cards.scout,
  ];

  static const abilityCards = [];
}

class Cards {
  // CLOSE CARDS
  static const knight = CardData(
    title: 'Knight',
    imagePath: './assets/',
    isUnitCard: true,
    attackRange: 'Close',
    attackPower: 5,
    isFullSize: false,
    type: CardType.close,
  );

  static const spear = CardData(
      title: 'Spearman',
      imagePath: './lib/assets/spearman.png',
      isUnitCard: true,
      attackRange: 'Close',
      attackPower: 3,
      isFullSize: false,
      type: CardType.close);

  static const swordsman = CardData(
    title: 'Swordsman',
    imagePath: './assets/',
    isUnitCard: true,
    attackRange: 'Close',
    attackPower: 2,
    isFullSize: false,
    type: CardType.close,
  );

  // RANGED CARDS
  static const longbow = CardData(
    title: 'Longbowman',
    imagePath: './assets/',
    isUnitCard: true,
    attackRange: 'Ranged',
    attackPower: 5,
    isFullSize: false,
    type: CardType.medium,
  );

  static const CardData archer = CardData(
    title: 'Archer',
    imagePath: './lib/assets/archer.png',
    isUnitCard: true,
    attackRange: 'Ranged',
    attackPower: 4,
    isFullSize: false,
    type: CardType.medium,
  );

  static const CardData javelin = CardData(
    title: 'Javelin Thrower',
    imagePath: './assets/',
    isUnitCard: true,
    attackRange: 'Ranged',
    attackPower: 4,
    isFullSize: false,
    type: CardType.medium,
  );

  // SIEGE CARDS
  static const CardData trebuchet = CardData(
    title: 'Trebuchet',
    imagePath: './lib/assets/trebuchet.png',
    isUnitCard: true,
    attackRange: 'Distance',
    attackPower: 8,
    isFullSize: false,
    type: CardType.siege,
  );

  static const CardData catapult = CardData(
    title: 'Catapult',
    imagePath: './lib/assets/catapult.png',
    isUnitCard: true,
    attackRange: 'Distance',
    attackPower: 6,
    isFullSize: false,
    type: CardType.siege,
  );

  static const CardData balista = CardData(
    title: 'Balista',
    imagePath: './assets/trebuchet.png',
    isUnitCard: true,
    attackRange: 'Distance',
    attackPower: 5,
    isFullSize: false,
    type: CardType.siege,
  );

  // SPY CARDS
  static const CardData scout = CardData(
    title: 'scout',
    imagePath: './assets/scout.png',
    isUnitCard: true,
    attackRange: 'Close',
    attackPower: 2,
    isFullSize: false,
    type: CardType.spy,
  );

  // ABILITY CARDS
}
