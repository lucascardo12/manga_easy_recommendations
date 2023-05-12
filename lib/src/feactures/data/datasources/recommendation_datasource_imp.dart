// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_driver/client_driver.dart';
import 'package:manga_easy_recommendations/src/core/request/result_entity.dart';
import 'package:manga_easy_recommendations/src/core/services/api_error_service.dart';
import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource.dart';
import 'package:manga_easy_recommendations/src/feactures/data/dtos/recommendation_dto.dart';
import 'package:manga_easy_recommendations/src/feactures/data/mappers/list_recommendation_mapper.dart';

class RecommendationDataSourceImp implements RecommendationDataSource {
  final ClientRequest _clientRequest;
  final String path = 'recommendations';
  final String url = 'http://monolito.lucas-cm.com.br';
  final String version = 'v1';
  final ApiErrorService _apiErrorService;
  final RecommendationDtoMapper _mapper;

  RecommendationDataSourceImp(
    this._clientRequest,
    this._apiErrorService,
    this._mapper,
  );
  @override
  Future<List<RecommendationDto>> list() async {
    final response = await _clientRequest.get(
      path: '$url/$version/$path/list',
    );
    if (response.statusCode != 200) {
      _apiErrorService.getError(response);
    }
    final result = ResultEntity.fromJson(response.data);

    if (result.status == 'ERROR') {
      throw Exception(result.message);
    }

    return result.data.map((e) => _mapper.fromJson(e)).toList();
  }
}
