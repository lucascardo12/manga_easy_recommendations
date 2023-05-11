import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/molecules/location_list__item.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class EffectParallax extends StatelessWidget {
  final List<RecommendationEntity> listRecommendation;
  const EffectParallax({
    super.key,
    required this.listRecommendation,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listRecommendation.length,
      itemBuilder: (context, index) {
        final recommend = listRecommendation[index];
        return GestureDetector(
          onTap: () {
            EasyNavigator.of(context).pushNamed(
              route: EasyRoutes.mangaLis,
              arguments: {
                'nameManga': recommend.uniqueid,
                'isUniqueId': true,
              },
            );
          },
          child: LocationListItem(
            imageUrl: recommend.link,
            name: recommend.title,
          ),
        );
      },
    );
  }
}
