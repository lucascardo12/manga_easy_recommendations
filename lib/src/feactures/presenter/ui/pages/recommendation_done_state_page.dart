import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/molecules/location_list__item.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';
import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class RecommendationDoneStatePage extends StatelessWidget {
  final List<RecommendationEntity> listRecommendation;
  const RecommendationDoneStatePage({
    super.key,
    required this.listRecommendation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: ListView.builder(
          itemCount: listRecommendation.length,
          itemBuilder: (context, index) {
            final recommend = listRecommendation[index];
            return GestureDetector(
              onTap: () {
                EasyNavigator.of(context).pushNamed(
                  route: EasyRoutes.mangaLis,
                  arguments: {
                    'nameManga': recommend.title,
                    'isUniqueId': true,
                  },
                );
              },
              child: LocationListItem(
                imageUrl: recommend.link,
                name: recommend.title,
                artist: recommend.artistname,
                date: Helps.formetDateFromTimestap(
                  recommend.createdat,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
