import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';

abstract class RecommendationRepository {
  Future<List<RecommendationEntity>> getRecommendation();
}
