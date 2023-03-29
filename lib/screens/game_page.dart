import 'package:flutter/material.dart';
import 'package:war_card_game/models/deck.dart';
import 'package:war_card_game/widgets/card_widget.dart';
// ignore: depend_on_referenced_packages
import '../models/global.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Deck deck1 = Deck();
  late Deck deck2 = Deck();
  late String card1 = cardBase;
  late String card2 = cardBase;
  @override
  void initState() {
    super.initState();
    deck1.generateDeck();
    deck2.generateDeck();
    deck1.shuffleCards();
    deck2.shuffleCards();
  }

  void nextRound() {
    setState(() {
      card1 = deck1.drawCard();
      card2 = deck2.drawCard();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'War Card Game',
            // style: GoogleFonts.getFont('Lato'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardWidget(imagePath: card1),
              const CardWidget(imagePath: cardBack),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardWidget(imagePath: card2),
              const CardWidget(imagePath: cardBack),
            ],
          ),
          ElevatedButton(
            onPressed: nextRound,
            child: const Text('Play'),
          ),
        ],
      ),
    );
  }
}
