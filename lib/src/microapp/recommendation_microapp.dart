import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_recommendations/src/core/services/api_error_service.dart';
import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource.dart';
import 'package:manga_easy_recommendations/src/feactures/data/datasources/recommendation_datasource_imp.dart';
import 'package:manga_easy_recommendations/src/feactures/data/mappers/list_recommendation_mapper.dart';
import 'package:manga_easy_recommendations/src/feactures/data/repositories/recommendation_repository_imp.dart';
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
    //service
    getIt.registerFactory<ApiErrorService>(
      () => ApiErrorService(),
    );

    //mappers
    getIt.registerFactory(() => RecommendationDtoMapper());
    //datasource
    getIt.registerFactory<RecommendationDataSource>(
        () => RecommendationDataSourceImp(getIt(), getIt(), getIt()));

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
