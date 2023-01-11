import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonManga extends StatelessWidget {
  const LikeButtonManga({super.key});

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 30,
      circleColor: const CircleColor(
          start: Color.fromARGB(255, 245, 68, 106),
          end: Color.fromARGB(255, 252, 50, 111)),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: Color.fromARGB(255, 255, 148, 153),
        dotSecondaryColor: Color.fromARGB(255, 255, 148, 153),
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : Colors.grey,
          size: 20,
        );
      },
      likeCount: 0,
    );
  }
}
