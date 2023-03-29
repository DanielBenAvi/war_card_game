class GameCard {
  final String id;
  final int rank;
  final String imagePath;

  GameCard({required this.id, required this.rank, required this.imagePath});

  String get getImage => imagePath;
}
