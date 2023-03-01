import 'package:card_game/model/card_data.dart';

extension CardTypeFilter on List<CardData> {
  List<CardData> ofType(CardType type) => where((e) => e.type == type).toList();
  List<CardData> get closeCards => ofType(CardType.close);
  List<CardData> get mediumCards => ofType(CardType.medium);
  List<CardData> get siegeCards => ofType(CardType.siege);
  List<CardData> get abilityCards => ofType(CardType.ability);
  List<CardData> get spyCards => ofType(CardType.spy);
}
