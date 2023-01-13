import './model/card_data.dart';

const List<List<CardData>> cardDecks = [
  closeCards,
  rangedCards,
  distanceCards,
  abilityCards,
];

const List<CardData> closeCards = [
  knight,
  spear,
  swordsman,
];

const CardData knight = CardData(
  title: 'Knight',
  imagePath: './assets/',
  isUnitCard: true,
  attackRange: 'Close',
  attackPower: 5,
);

const CardData spear = CardData(
  title: 'Spearman',
  imagePath: './lib/assets/spearman.png',
  isUnitCard: true,
  attackRange: 'Close',
  attackPower: 3,
);

const CardData swordsman = CardData(
  title: 'Swordsman',
  imagePath: './assets/',
  isUnitCard: true,
  attackRange: 'Close',
  attackPower: 2,
);

// RANGED CARDS
const List<CardData> rangedCards = [
  longbow,
  archer,
  javelin,
];

const CardData longbow = CardData(
  title: 'Longbowman',
  imagePath: './assets/',
  isUnitCard: true,
  attackRange: 'Ranged',
  attackPower: 5,
);

const CardData archer = CardData(
  title: 'Archer',
  imagePath: './lib/assets/archer.png',
  isUnitCard: true,
  attackRange: 'Ranged',
  attackPower: 4,
);

const CardData javelin = CardData(
  title: 'Javelin Thrower',
  imagePath: './assets/',
  isUnitCard: true,
  attackRange: 'Ranged',
  attackPower: 4,
);

// DISTANCE CARDS
const List<CardData> distanceCards = [
  trebuchet,
  catapult,
  balista,
];

const CardData trebuchet = CardData(
  title: 'Trebuchet',
  imagePath: './lib/assets/trebuchet.png',
  isUnitCard: true,
  attackRange: 'Distance',
  attackPower: 8,
);

const CardData catapult = CardData(
  title: 'Catapult',
  imagePath: './lib/assets/catapult.png',
  isUnitCard: true,
  attackRange: 'Distance',
  attackPower: 6,
);

const CardData balista = CardData(
  title: 'balista',
  imagePath: './assets/trebuchet.png',
  isUnitCard: true,
  attackRange: 'Distance',
  attackPower: 5,
);

// ABILITY CARDS
const List<CardData> abilityCards = [];
