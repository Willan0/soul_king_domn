import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constant/colors.dart';

class RatingStarWidget extends StatelessWidget {
  const RatingStarWidget({Key? key,this.starCount=4.5}) : super(key: key);
  final double starCount;
  @override
  Widget build(BuildContext context) {
    return  RatingBar.builder(
      initialRating: starCount,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
      unratedColor: cWShadow,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (double value) {  },
    );
  }
}
