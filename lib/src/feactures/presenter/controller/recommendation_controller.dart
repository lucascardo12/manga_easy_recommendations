import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/core/services/api_error.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/usecases/get_recommendation_usecase.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/state/recommendation_state.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/state/recommendation_state_imp.dart';

class RecommendationController extends ChangeNotifier {
  final GetRecommendationUseCase _recommendation;

  RecommendationController(this._recommendation);

  RecommendationState state = RecommendationInitialState();
  List<RecommendationEntity> listRecommendation = [];

  void init() async {
    getList();
  }

  void getList() async {
    try {
      listRecommendation = await _recommendation.get();
      state = RecommendationDoneState(listRecommendation);
    } catch (e) {
      if (e is ApiError) {
        state = RecommendationNotfoundState(e.message);
      }
      state = RecommendationNotfoundState(
          'Ops! Ocorreu um erro ao carregar.\nPor favor, tente novamente mais tarde.');
    }
    notifyListeners();
  }
}
