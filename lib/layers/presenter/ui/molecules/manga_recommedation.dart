import 'package:flutter/material.dart';
import 'package:manga_easy_recommendation_screen/layers/presenter/ui/atoms/image_recommedation_container.dart';
import 'package:manga_easy_recommendation_screen/layers/presenter/ui/atoms/like_button.dart';
import 'package:manga_easy_recommendation_screen/layers/presenter/ui/atoms/name_and_author_recommedation.dart';

class MangaRecomendation extends StatefulWidget {
  const MangaRecomendation({super.key});

  @override
  State<MangaRecomendation> createState() => _MangaRecomendationState();
}

class _MangaRecomendationState extends State<MangaRecomendation> {
  bool save = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const ImageContainer(
            image:
                'https://media.discordapp.net/attachments/917529011935146036/1060315692601196714/Remina.png'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            NameAndAuthorRecommedation(
                nameManga: 'Hellsing',
                nameAuthor: 'Bovinao do Arroxa',
                data: '22/12/2012'),
            LikeButtonManga()
          ],
        ),
      ],
    );
  }
}
