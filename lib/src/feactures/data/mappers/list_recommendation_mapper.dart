import 'package:manga_easy_recommendations/src/feactures/data/dtos/list_recommendation_dto.dart';

class ListRecommendationMapper {
  ListRecommendationDto fromJson(Map<String, dynamic> json) {
    return ListRecommendationDto(
        status: json['status'],
        message: json['message'],
        total: json['total'],
        data: json['data']
            .map<Map<String, dynamic>>((e) => Map<String, dynamic>.from(e))
            .toList());
  }

  Map<String, dynamic> toJson(ListRecommendationDto recommendation) {
    return {
      'status': recommendation.status,
      'message': recommendation.message,
      'total': recommendation.total,
      'data': recommendation.data,
    };
  }
}
