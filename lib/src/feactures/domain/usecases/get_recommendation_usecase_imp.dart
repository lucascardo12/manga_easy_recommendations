import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/repositories/recommendation_repository.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/usecases/get_recommendation_usecase.dart';

class GetRecommendationUseCaseImp implements GetRecommendationUseCase {
  final RecommendationRepository recommendationRepository;

  GetRecommendationUseCaseImp(this.recommendationRepository);

  @override
  Future<List<RecommendationEntity>> get() async {
  
    return await  recommendationRepository.getRecommendation();
  }
}
