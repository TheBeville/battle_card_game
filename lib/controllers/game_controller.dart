import 'package:bloc/bloc.dart';
import 'package:card_game/model/card_data.dart';
import '../model/cards.dart';

import '../model/game_data.dart';

class GameController extends Cubit<GameState> {
  final GameData _gameData = const GameData(
    playerScore: 0,
    opponentScore: 0,
    opponentCloseScore: 0,
    opponentRangedScore: 0,
    opponentSiegeScore: 0,
    playerCloseScore: 0,
    playerRangedScore: 0,
    playerSiegeScore: 0,
  );

  GameController() : super(GameState.initial(randomDeck(), randomDeck()));

  static List<CardData> randomDeck() => [
        ...List.filled(10, Cards.spear),
        ...List.filled(10, Cards.archer)
      ]..shuffle();

  void drawCard() => emit((state.drawCard(state.turn)));

  void changeTurn() => emit((state.changeTurn()));
}

class GameState {
  final List<PlayerState> players;
  final int turn;

  const GameState({
    required this.players,
    required this.turn,
  });

  GameState copyWith({
    final List<PlayerState>? players,
    final int? turn,
  }) =>
      GameState(
        players: players ?? this.players,
        turn: turn ?? this.turn,
      );

  GameState updatePlayer(int player, PlayerState state) =>
      copyWith(players: [...players]..[player] = state);

  GameState drawCard(int player) =>
      updatePlayer(player, players[player].drawCard());

  GameState changeTurn() => copyWith(turn: 1 - turn);

  factory GameState.initial(List<CardData> deck1, List<CardData> deck2) =>
      GameState(
        players: [PlayerState.initial(deck1), PlayerState.initial(deck2)],
        turn: 0,
      );
}

class PlayerState {
  final List<CardData> deck;
  final List<CardData> hand;
  final List<CardData> board;

  PlayerState copyWith({
    List<CardData>? deck,
    List<CardData>? hand,
    List<CardData>? board,
  }) =>
      PlayerState(
        deck: deck ?? this.deck,
        hand: hand ?? this.hand,
        board: board ?? this.board,
      );

  const PlayerState({
    required this.deck,
    required this.hand,
    required this.board,
  });

  PlayerState drawCard() =>
      copyWith(deck: [...deck.skip(1)], hand: [...hand, deck.first]);

  factory PlayerState.initial(List<CardData> deck) =>
      PlayerState(deck: deck, hand: [], board: []);
}
