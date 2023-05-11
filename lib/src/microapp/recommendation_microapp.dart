import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource.dart';
import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource_imp.dart';
import 'package:manga_easy_recommendations/src/feactures/data/repositories/recommendation_repository_imp.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/mappers/recommedation_mapper.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/repositories/recommendation_repository.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/usecases/get_recommendation_usecase.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/usecases/get_recommendation_usecase_imp.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/controller/recommendation_controller.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/pages/recommendation_page.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class RecommendationMicroApp extends MicroApp {
  GetIt getIt = GetIt.instance;
  @override
  Map<String, Widget> routers = {
    RecommendationPage.route: const RecommendationPage()
  };

  @override
  void registerDependencies() {
    //mappers
    getIt.registerFactory(() => RecommendationMapper());
    //datasource
    getIt.registerFactory<RecommendationDataSource>(
        () => RecommendationDataSourceImp(getIt()));

    //repositories
    getIt.registerFactory<RecommendationRepository>(
      () => RecommendationRepositoryImp(getIt(), getIt()),
    );

    //usecases
    getIt.registerFactory<GetRecommendationUseCase>(
        () => GetRecommendationUseCaseImp(getIt()));

    //controllers
    getIt.registerFactory<RecommendationController>(
      () => RecommendationController(getIt()),
    );
  }
}
