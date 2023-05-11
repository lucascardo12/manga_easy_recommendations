import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/usecases/get_recommendation_usecase.dart';

class RecommendationController extends ChangeNotifier {
  final GetRecommendationUseCase _recommendation;

  RecommendationController(this._recommendation);

  List<RecommendationEntity> listRecommendation = [];

  void init() async {
    getList();
  }

  void getList() async {
    listRecommendation = await _recommendation.get();
    notifyListeners();
  }
}
