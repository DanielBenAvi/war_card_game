import 'package:flutter/material.dart';
import 'package:war_card_game/models/card.dart';
import 'package:war_card_game/models/deck.dart';
import 'package:war_card_game/widgets/card_widget.dart';
// ignore: depend_on_referenced_packages
import '../models/global.dart';
// ignore: depend_on_referenced_packages

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Deck deck1 = Deck();
  late Deck deck2 = Deck();

  GameCard card1 = baseCard;
  GameCard card2 = baseCard;
  late String massage = '';
  @override
  void initState() {
    super.initState();
    deck1.generateDeck();
    deck2.generateDeck();
    deck1.shuffleCards();
    deck2.shuffleCards();
  }

  void nextRound() {
    setState(
      () {
        card1 = deck1.drawCard();
        card2 = deck2.drawCard();

        int len1 = deck1.cards.length;
        int len2 = deck2.cards.length;

        if (card1.rank > card2.rank) {
          massage = 'Player 1 wins {P1:$len1,P2:$len2}';
          deck1.addCard(card1);
          deck1.addCard(card2);
        } else if (card1.rank < card2.rank) {
          massage = 'Player 2 wins {P1:$len1,P2:$len2}';
          deck1.addCard(card1);
          deck2.addCard(card2);
        } else if (card1.rank == card2.rank) {
          massage = 'Draw -> {P1:$len1,P2:$len2}';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'War Card Game',
              // style: GoogleFonts.getFont('Lato'),
            ),
            Text(massage),
            CardWidget(imagePath: card1.getImage),
            CardWidget(imagePath: card2.getImage),
            ElevatedButton(
              onPressed: nextRound,
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
