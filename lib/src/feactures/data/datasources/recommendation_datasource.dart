import 'package:manga_easy_recommendations/src/feactures/data/dtos/list_recommendation_dto.dart';

abstract class RecommendationDataSource {
  Future<ListRecommendationDto> list();
}
