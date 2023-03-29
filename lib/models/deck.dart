import 'card.dart';

class Deck {
  List<Card> cards = [];

  /// Generate a deck of cards
  ///
  /// return List<Card> - a list of cards unshuffled
  List<Card> generateDeck() {
    cards.add(Card(id: '2S', rank: 2, imagePath: 'assets/cards/2S.svg'));
    cards.add(Card(id: '3S', rank: 3, imagePath: 'assets/cards/3S.svg'));
    cards.add(Card(id: '4S', rank: 4, imagePath: 'assets/cards/4S.svg'));
    cards.add(Card(id: '5S', rank: 5, imagePath: 'assets/cards/5S.svg'));
    cards.add(Card(id: '6S', rank: 6, imagePath: 'assets/cards/6S.svg'));
    cards.add(Card(id: '7S', rank: 7, imagePath: 'assets/cards/7S.svg'));
    cards.add(Card(id: '8S', rank: 8, imagePath: 'assets/cards/8S.svg'));
    cards.add(Card(id: '9S', rank: 9, imagePath: 'assets/cards/9S.svg'));
    cards.add(Card(id: '10S', rank: 10, imagePath: 'assets/cards/10S.svg'));
    cards.add(Card(id: 'JS', rank: 11, imagePath: 'assets/cards/JS.svg'));
    cards.add(Card(id: 'QS', rank: 12, imagePath: 'assets/cards/QS.svg'));
    cards.add(Card(id: 'KS', rank: 13, imagePath: 'assets/cards/KS.svg'));
    cards.add(Card(id: 'AS', rank: 14, imagePath: 'assets/cards/AS.svg'));
    cards.add(Card(id: '2H', rank: 2, imagePath: 'assets/cards/2H.svg'));
    cards.add(Card(id: '3H', rank: 3, imagePath: 'assets/cards/3H.svg'));
    cards.add(Card(id: '4H', rank: 4, imagePath: 'assets/cards/4H.svg'));
    cards.add(Card(id: '5H', rank: 5, imagePath: 'assets/cards/5H.svg'));
    cards.add(Card(id: '6H', rank: 6, imagePath: 'assets/cards/6H.svg'));
    cards.add(Card(id: '7H', rank: 7, imagePath: 'assets/cards/7H.svg'));
    cards.add(Card(id: '8H', rank: 8, imagePath: 'assets/cards/8H.svg'));
    cards.add(Card(id: '9H', rank: 9, imagePath: 'assets/cards/9H.svg'));
    cards.add(Card(id: '10H', rank: 10, imagePath: 'assets/cards/10H.svg'));
    cards.add(Card(id: 'JH', rank: 11, imagePath: 'assets/cards/JH.svg'));
    cards.add(Card(id: 'QH', rank: 12, imagePath: 'assets/cards/QH.svg'));
    cards.add(Card(id: 'KH', rank: 13, imagePath: 'assets/cards/KH.svg'));
    cards.add(Card(id: 'AH', rank: 14, imagePath: 'assets/cards/AH.svg'));
    cards.add(Card(id: '2C', rank: 2, imagePath: 'assets/cards/2C.svg'));
    cards.add(Card(id: '3C', rank: 3, imagePath: 'assets/cards/3C.svg'));
    cards.add(Card(id: '4C', rank: 4, imagePath: 'assets/cards/4C.svg'));
    cards.add(Card(id: '5C', rank: 5, imagePath: 'assets/cards/5C.svg'));
    cards.add(Card(id: '6C', rank: 6, imagePath: 'assets/cards/6C.svg'));
    cards.add(Card(id: '7C', rank: 7, imagePath: 'assets/cards/7C.svg'));
    cards.add(Card(id: '8C', rank: 8, imagePath: 'assets/cards/8C.svg'));
    cards.add(Card(id: '9C', rank: 9, imagePath: 'assets/cards/9C.svg'));
    cards.add(Card(id: '10C', rank: 10, imagePath: 'assets/cards/10C.svg'));
    cards.add(Card(id: 'JC', rank: 11, imagePath: 'assets/cards/JC.svg'));
    cards.add(Card(id: 'QC', rank: 12, imagePath: 'assets/cards/QC.svg'));
    cards.add(Card(id: 'KC', rank: 13, imagePath: 'assets/cards/KC.svg'));
    cards.add(Card(id: 'AC', rank: 14, imagePath: 'assets/cards/AC.svg'));
    cards.add(Card(id: '2D', rank: 2, imagePath: 'assets/cards/2D.svg'));
    cards.add(Card(id: '3D', rank: 3, imagePath: 'assets/cards/3D.svg'));
    cards.add(Card(id: '4D', rank: 4, imagePath: 'assets/cards/4D.svg'));
    cards.add(Card(id: '5D', rank: 5, imagePath: 'assets/cards/5D.svg'));
    cards.add(Card(id: '6D', rank: 6, imagePath: 'assets/cards/6D.svg'));
    cards.add(Card(id: '7D', rank: 7, imagePath: 'assets/cards/7D.svg'));
    cards.add(Card(id: '8D', rank: 8, imagePath: 'assets/cards/8D.svg'));
    cards.add(Card(id: '9D', rank: 9, imagePath: 'assets/cards/9D.svg'));
    cards.add(Card(id: '10D', rank: 10, imagePath: 'assets/cards/10D.svg'));
    cards.add(Card(id: 'JD', rank: 11, imagePath: 'assets/cards/JD.svg'));
    cards.add(Card(id: 'QD', rank: 12, imagePath: 'assets/cards/QD.svg'));
    cards.add(Card(id: 'KD', rank: 13, imagePath: 'assets/cards/KD.svg'));
    cards.add(Card(id: 'AD', rank: 14, imagePath: 'assets/cards/AD.svg'));
    cards.add(Card(id: 'J', rank: 15, imagePath: 'assets/cards/J.svg'));
    return cards;
  }

  /// Shuffles the cards
  ///
  /// Returns the shuffled deck
  List<Card> shuffleCards() {
    cards.shuffle();
    return cards;
  }
}
