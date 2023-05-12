import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/state/recommendation_state.dart';

class RecommendationInitialState extends RecommendationState {}

class RecommendationNotfoundState extends RecommendationState {}

class RecommendationDoneState extends RecommendationState {
  final List<RecommendationEntity> listRecommendation;

  RecommendationDoneState(this.listRecommendation);
}
