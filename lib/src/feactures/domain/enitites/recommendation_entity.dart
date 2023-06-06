class RecommendationEntity {
  String uid;
  String uniqueid;
  String title;
  String artistid;
  String artistname;
  String link;
  int createdat;
  int updatedat;

  RecommendationEntity({
    required this.uid,
    required this.uniqueid,
    required this.title,
    required this.artistid,
    required this.artistname,
    required this.link,
    required this.createdat,
    required this.updatedat,
  });
}
