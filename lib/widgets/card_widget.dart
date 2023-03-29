import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  const CardWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 80,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          side: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        elevation: 10,
        child: Image.asset(
          imagePath,
          height: 100,
        ),
      ),
    );
  }
}
