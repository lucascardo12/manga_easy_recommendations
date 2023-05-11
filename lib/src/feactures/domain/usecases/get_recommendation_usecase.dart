import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';

abstract class GetRecommendationUseCase {
  Future<List<RecommendationEntity>> get();
}
