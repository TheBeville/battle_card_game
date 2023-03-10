import 'package:bloc/bloc.dart';
import 'package:card_game/model/card_data.dart';
import 'package:card_game/utils.dart';
import '../model/cards.dart';

class GameController extends Cubit<GameState> {
  // create a shuffled deck for each player
  GameController() : super(GameState.initial(randomDeck(), randomDeck()));

  static List<CardData> randomDeck() => [
        ...List.filled(5, Cards.spear),
        ...List.filled(5, Cards.archer),
        ...List.filled(5, Cards.catapult),
      ]..shuffle();

  void drawCard() => emit((state.drawCard(state.turn)));

  void playCard(int player, CardData card) =>
      emit(state.playCard(player, card));

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

  GameState playCard(int player, CardData card) =>
      updatePlayer(player, players[player].playCard(card));

  // switch back and forth between player and opponent turn
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

  int get score => board.score;

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

  // draws a card to current hand, from the deck
  PlayerState drawCard() =>
      copyWith(deck: [...deck.skip(1)], hand: [...hand, deck.first]);

  PlayerState playCard(CardData card) =>
      copyWith(hand: [...hand]..remove(card), board: [...board, card]);

  factory PlayerState.initial(List<CardData> deck) =>
      PlayerState(deck: deck, hand: [], board: []);
}
