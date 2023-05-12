import 'package:manga_easy_recommendations/src/feactures/data/dtos/recommendation_dto.dart';
import 'package:manga_easy_recommendations/src/feactures/domain/enitites/recommendation_entity.dart';

class RecommendationDtoMapper {
  RecommendationDto fromJson(Map<String, dynamic> json) {
    return RecommendationDto(
      uid: json['_uid'],
      uniqueid: json['uniqueid'],
      title: json['title'],
      link: json['link'],
      datacria: json['datacria'] ?? 0,
      createdat: json['_createdat'],
      updatedat: json['_updatedat'],
    );
  }

  RecommendationEntity toEntity(RecommendationDto dto) {
    return RecommendationEntity(
      uid: dto.uid,
      uniqueid: dto.uniqueid,
      title: dto.title,
      link: dto.link,
      createdat: dto.createdat ?? dto.datacria,
      updatedat: dto.updatedat ?? dto.datacria,
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
      '_updatedat': recommendation.updatedat,
    };
  }
}
