import 'package:meta/meta.dart';

class GameInfo {
  GameInfo({
    @required this.title,
    @required this.category,
    @required this.description,
    @required this.imageUrls,
    @required this.score,
    @required this.reviewsAmount,
    @required this.downloadsAmount,
    @required this.playersLowerBound,
    @required this.playersUpperBound,
  });

  final String title;
  final String category;
  final String description;
  final List<String> imageUrls;
  final double score;
  final int reviewsAmount;
  final int downloadsAmount;
  final int playersLowerBound;
  final int playersUpperBound;
}
