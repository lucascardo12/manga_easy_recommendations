import 'package:client_driver/client_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_recommendations/src/core/services/api_error_service.dart';
import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource_imp.dart';
import 'package:manga_easy_recommendations/src/feactures/data/mappers/list_recommendation_mapper.dart';

void main() {
  ClientRequest clientDio = ClientDio();
  
  var recommendationData = RecommendationDataSourceImp(clientDio, ApiErrorService(), RecommendationDtoMapper());

  test(
    'testando requisisao de api',
    () async {
      expectLater(await recommendationData.list(), isNotEmpty);
    },
  );
}
