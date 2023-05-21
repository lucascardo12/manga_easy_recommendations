class RecommendationEntity {
  String uid;
  String uniqueid;
  String title;
  String artisticid;
  String artisticname;
  String link;
  int createdat;
  int updatedat;

  RecommendationEntity({
    required this.uid,
    required this.uniqueid,
    required this.title,
    required this.artisticid,
    required this.artisticname,
    required this.link,
    required this.createdat,
    required this.updatedat,
  });
}
