import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
// ignore: depend_on_referenced_packages
import 'package:flip_card/flip_card.dart';
import '../models/global.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  const CardWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      margin: const EdgeInsets.only(top: 20),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        elevation: 5,
        child: FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: SvgPicture.asset(
              cardBack,
              fit: BoxFit.fill,
            ),
            back: SvgPicture.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
            autoFlipDuration: const Duration(seconds: 2)),
      ),
    );
  }
}
