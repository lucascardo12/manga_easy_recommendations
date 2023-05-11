import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';

class RecommendationMapper {
  RecommendationEntity fromJson(Map<String, dynamic> json) {
    return RecommendationEntity(
      uid: json['_uid'],
      uniqueid: json['uniqueid'],
      title: json['title'],
      link: json['link'],
      datacria: json['datacria'] ?? 0,
      createdat: json['_createdat'] ?? json['datacria'] ?? 0 ,
      updateat: json['_updatedat'] ?? json['datacria'] ?? 0,
    );
  }

  Map<String, dynamic> toJson(RecommendationEntity recommendation) {
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
