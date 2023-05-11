import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource.dart';
import 'package:manga_easy_recommendations/src/feactures/data/dtos/list_recommendation_dto.dart';
import 'package:client_driver/client_driver.dart';
import 'package:manga_easy_recommendations/src/feactures/data/mappers/list_recommendation_mapper.dart';

class RecommendationDataSourceImp implements RecommendationDataSource {
  final ClientRequest _clientRequest;
  final String path = 'recommendations/list';
  final String url = 'http://monolito.lucas-cm.com.br';
  final String version = 'v1';

  RecommendationDataSourceImp(this._clientRequest);
  @override
  Future<ListRecommendationDto> list() async {
    var result = await _clientRequest.get(path: '$url/$version/$path');
    return ListRecommendationMapper().fromJson(result.data);
  }
}
