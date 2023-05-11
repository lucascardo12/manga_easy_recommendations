import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/mappers/recommedation_mapper.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/repositories/recommendation_repository.dart';

class RecommendationRepositoryImp implements RecommendationRepository {
  final RecommendationDataSource recommendationData;
  final RecommendationMapper _recommendationMapper;

  RecommendationRepositoryImp(
      this.recommendationData, this._recommendationMapper);
  @override
  Future<List<RecommendationEntity>> getRecommendation() async {
    var list = await recommendationData.list();
    var result =
        list.data.map((e) => _recommendationMapper.fromJson(e)).toList();
    return result;
  }
}
