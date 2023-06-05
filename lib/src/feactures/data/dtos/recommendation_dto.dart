class RecommendationDto {
  String uid;
  String uniqueid;
  String title;
  String artistid;
  String artistname;
  String link;
  int datacria;
  int? createdat;
  int? updatedat;

  RecommendationDto({
    required this.uid,
    required this.uniqueid,
    required this.title,
    required this.artistid,
    required this.artistname,
    required this.link,
    required this.datacria,
    required this.createdat,
    required this.updatedat,
  });
}
