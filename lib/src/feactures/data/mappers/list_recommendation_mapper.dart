import 'package:manga_easy_recommendations/src/feactures/data/dtos/recommendation_dto.dart';

class RecommendationDtoMapper {
  RecommendationDto fromJson(Map<String, dynamic> json) {
    return RecommendationDto(
      uid: json['_uid'],
      uniqueid: json['uniqueid'],
      title: json['title'],
      link: json['link'],
      datacria: json['datacria'] ?? 0,
      createdat: json['_createdat'],
      updateat: json['_updatedat'],
    );
  }

  Map<String, dynamic> toJson(RecommendationDto recommendation) {
    return {
      '_uid': recommendation.uid,
      'uniqueid': recommendation.uniqueid,
      'title': recommendation.title,
      'link': recommendation.link,
      'datacria': recommendation.datacria,
      '_createdat': recommendation.createdat,
      '_updatedat': recommendation.updateat,
    };
  }
}
