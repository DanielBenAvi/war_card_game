import 'card.dart';
import 'global.dart';

class Deck {
  List<GameCard> cards = [];

  /// Generate a deck of cards
  ///
  /// return List<Card> - a list of cards unshuffled
  List<GameCard> generateDeck() {
    cards.add(GameCard(id: '2S', rank: 2, imagePath: 'assets/cards/2S.svg'));
    cards.add(GameCard(id: '3S', rank: 3, imagePath: 'assets/cards/3S.svg'));
    cards.add(GameCard(id: '4S', rank: 4, imagePath: 'assets/cards/4S.svg'));
    cards.add(GameCard(id: '5S', rank: 5, imagePath: 'assets/cards/5S.svg'));
    cards.add(GameCard(id: '6S', rank: 6, imagePath: 'assets/cards/6S.svg'));
    cards.add(GameCard(id: '7S', rank: 7, imagePath: 'assets/cards/7S.svg'));
    cards.add(GameCard(id: '8S', rank: 8, imagePath: 'assets/cards/8S.svg'));
    cards.add(GameCard(id: '9S', rank: 9, imagePath: 'assets/cards/9S.svg'));
    cards.add(GameCard(id: '10S', rank: 10, imagePath: 'assets/cards/10S.svg'));
    cards.add(GameCard(id: 'JS', rank: 11, imagePath: 'assets/cards/JS.svg'));
    cards.add(GameCard(id: 'QS', rank: 12, imagePath: 'assets/cards/QS.svg'));
    cards.add(GameCard(id: 'KS', rank: 13, imagePath: 'assets/cards/KS.svg'));
    cards.add(GameCard(id: 'AS', rank: 14, imagePath: 'assets/cards/AS.svg'));
    cards.add(GameCard(id: '2H', rank: 2, imagePath: 'assets/cards/2H.svg'));
    cards.add(GameCard(id: '3H', rank: 3, imagePath: 'assets/cards/3H.svg'));
    cards.add(GameCard(id: '4H', rank: 4, imagePath: 'assets/cards/4H.svg'));
    cards.add(GameCard(id: '5H', rank: 5, imagePath: 'assets/cards/5H.svg'));
    cards.add(GameCard(id: '6H', rank: 6, imagePath: 'assets/cards/6H.svg'));
    cards.add(GameCard(id: '7H', rank: 7, imagePath: 'assets/cards/7H.svg'));
    cards.add(GameCard(id: '8H', rank: 8, imagePath: 'assets/cards/8H.svg'));
    cards.add(GameCard(id: '9H', rank: 9, imagePath: 'assets/cards/9H.svg'));
    cards.add(GameCard(id: '10H', rank: 10, imagePath: 'assets/cards/10H.svg'));
    cards.add(GameCard(id: 'JH', rank: 11, imagePath: 'assets/cards/JH.svg'));
    cards.add(GameCard(id: 'QH', rank: 12, imagePath: 'assets/cards/QH.svg'));
    cards.add(GameCard(id: 'KH', rank: 13, imagePath: 'assets/cards/KH.svg'));
    cards.add(GameCard(id: 'AH', rank: 14, imagePath: 'assets/cards/AH.svg'));
    cards.add(GameCard(id: '2C', rank: 2, imagePath: 'assets/cards/2C.svg'));
    cards.add(GameCard(id: '3C', rank: 3, imagePath: 'assets/cards/3C.svg'));
    cards.add(GameCard(id: '4C', rank: 4, imagePath: 'assets/cards/4C.svg'));
    cards.add(GameCard(id: '5C', rank: 5, imagePath: 'assets/cards/5C.svg'));
    cards.add(GameCard(id: '6C', rank: 6, imagePath: 'assets/cards/6C.svg'));
    cards.add(GameCard(id: '7C', rank: 7, imagePath: 'assets/cards/7C.svg'));
    cards.add(GameCard(id: '8C', rank: 8, imagePath: 'assets/cards/8C.svg'));
    cards.add(GameCard(id: '9C', rank: 9, imagePath: 'assets/cards/9C.svg'));
    cards.add(GameCard(id: '10C', rank: 10, imagePath: 'assets/cards/10C.svg'));
    cards.add(GameCard(id: 'JC', rank: 11, imagePath: 'assets/cards/JC.svg'));
    cards.add(GameCard(id: 'QC', rank: 12, imagePath: 'assets/cards/QC.svg'));
    cards.add(GameCard(id: 'KC', rank: 13, imagePath: 'assets/cards/KC.svg'));
    cards.add(GameCard(id: 'AC', rank: 14, imagePath: 'assets/cards/AC.svg'));
    cards.add(GameCard(id: '2D', rank: 2, imagePath: 'assets/cards/2D.svg'));
    cards.add(GameCard(id: '3D', rank: 3, imagePath: 'assets/cards/3D.svg'));
    cards.add(GameCard(id: '4D', rank: 4, imagePath: 'assets/cards/4D.svg'));
    cards.add(GameCard(id: '5D', rank: 5, imagePath: 'assets/cards/5D.svg'));
    cards.add(GameCard(id: '6D', rank: 6, imagePath: 'assets/cards/6D.svg'));
    cards.add(GameCard(id: '7D', rank: 7, imagePath: 'assets/cards/7D.svg'));
    cards.add(GameCard(id: '8D', rank: 8, imagePath: 'assets/cards/8D.svg'));
    cards.add(GameCard(id: '9D', rank: 9, imagePath: 'assets/cards/9D.svg'));
    cards.add(GameCard(id: '10D', rank: 10, imagePath: 'assets/cards/10D.svg'));
    cards.add(GameCard(id: 'JD', rank: 11, imagePath: 'assets/cards/JD.svg'));
    cards.add(GameCard(id: 'QD', rank: 12, imagePath: 'assets/cards/QD.svg'));
    cards.add(GameCard(id: 'KD', rank: 13, imagePath: 'assets/cards/KD.svg'));
    cards.add(GameCard(id: 'AD', rank: 14, imagePath: 'assets/cards/AD.svg'));
    cards.add(GameCard(id: 'J', rank: 15, imagePath: 'assets/cards/J.svg'));
    return cards;
  }

  /// Shuffles the cards
  ///
  /// Returns the shuffled deck
  List<GameCard> shuffleCards() {
    cards.shuffle();
    return cards;
  }

  /// Draws a card from the deck
  ///
  /// Returns the card
  GameCard drawCard() {
    if (cards.isNotEmpty) {
      return cards.removeAt(0);
    } else {
      return baseCard;
    }
  }

  /// adds a card to the deck
  ///
  /// Returns the deck
  List<GameCard> addCard(GameCard card) {
    cards.add(card);
    return cards;
  }
}
