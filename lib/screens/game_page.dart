import 'package:flutter/material.dart';
import 'package:war_card_game/models/deck.dart';
import 'package:war_card_game/widgets/card_widget.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Deck deck1 = Deck();
  late Deck deck2 = Deck();
  @override
  void initState() {
    super.initState();
    deck1.generateDeck();
    deck2.generateDeck();
    deck1.shuffleCards();
    deck2.shuffleCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 80,
          child: ListView(
            padding: EdgeInsets.only(top: 50),
            addAutomaticKeepAlives: true,
            children: [
              CardWidget(imagePath: deck1.cardBack),
              CardWidget(imagePath: deck1.cards[0].imagePath),
              CardWidget(imagePath: deck2.cards[0].imagePath),
              CardWidget(imagePath: deck1.cardBack),
            ],
          ),
        ),
      ),
    );
  }
}
