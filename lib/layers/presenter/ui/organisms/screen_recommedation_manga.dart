import 'package:flutter/material.dart';
import 'package:manga_easy_recommendation_screen/layers/presenter/ui/atoms/like_button.dart';
import 'package:manga_easy_recommendation_screen/layers/presenter/ui/molecules/manga_recommedation.dart';

class ScreenRecomedationManga extends StatelessWidget {
  const ScreenRecomedationManga({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MangaRecomendation(),
            MangaRecomendation(),
            MangaRecomendation(),
            MangaRecomendation(),
            MangaRecomendation(),
            LikeButtonManga()
          ],
        ),
      ),
    ]);
  }
}
