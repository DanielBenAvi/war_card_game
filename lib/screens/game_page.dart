import 'package:flutter/material.dart';
import 'package:war_card_game/models/deck.dart';
import 'package:war_card_game/widgets/card_widget.dart';

import '../models/global.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Deck deck1 = Deck();
  late Deck deck2 = Deck();
  late String card1 = cardBack;
  late String card2 = cardBack;
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
      body: Column(
        children: [
          const Text(
            'War Card Game',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 80,
              child: Column(
                children: [
                  const CardWidget(imagePath: cardBack),
                  CardWidget(imagePath: card1),
                  CardWidget(imagePath: card2),
                  const CardWidget(imagePath: cardBack),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
