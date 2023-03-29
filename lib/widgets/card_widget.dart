import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  const CardWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100 * 2 / 3,
      height: 100,
      margin: const EdgeInsets.only(top: 20),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        elevation: 5,
        child: SvgPicture.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
