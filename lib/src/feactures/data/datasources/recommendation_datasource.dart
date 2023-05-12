import 'package:manga_easy_recommendations/src/feactures/data/dtos/recommendation_dto.dart';

abstract class RecommendationDataSource {
  Future<List<RecommendationDto>> list();
}
