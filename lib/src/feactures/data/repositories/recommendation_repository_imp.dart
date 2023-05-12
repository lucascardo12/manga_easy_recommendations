import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource.dart';
import 'package:manga_easy_recommendations/src/feactures/data/mappers/list_recommendation_mapper.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/repositories/recommendation_repository.dart';

class RecommendationRepositoryImp implements RecommendationRepository {
  final RecommendationDataSource recommendationData;
  final RecommendationDtoMapper _recommendationMapper;

  RecommendationRepositoryImp(
      this.recommendationData, this._recommendationMapper);
  @override
  Future<List<RecommendationEntity>> getRecommendation() async {
    var list = await recommendationData.list();
    var result =
        list.map((e) => _recommendationMapper.toEntity(e)).toList();
    return result;
  }
}
