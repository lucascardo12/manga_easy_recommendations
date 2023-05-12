class RecommendationDto {
  String uid;
  String uniqueid;
  String title;
  String link;
  int datacria;
  int? createdat;
  int? updateat;

  RecommendationDto({
    required this.uid,
    required this.uniqueid,
    required this.title,
    required this.link,
    required this.datacria,
    required this.createdat,
    required this.updateat,
  });
}
