import 'package:client_driver/client_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/repositories/recommendation_repository.dart';
import 'package:manga_easy_recommendations/src/microapp/recommendation_microapp.dart';

void main() {
  setUpAll(() {
    GetIt.instance.registerFactory<ClientRequest>(
      () => ClientHttp(),
    );
    RecommendationMicroApp().registerDependencies();
  });
  test('Recomendação não é vazia', () async {
    RecommendationRepository recommendationRepository = GetIt.instance();
    expect(await recommendationRepository.getRecommendation(), isNotEmpty);
  });
}
