class RecommendationDto {
  String uid;
  String uniqueid;
  String title;
  String artisticid;
  String artisticname;
  String link;
  int datacria;
  int? createdat;
  int? updatedat;

  RecommendationDto({
    required this.uid,
    required this.uniqueid,
    required this.title,
    required this.artisticid,
    required this.artisticname,
    required this.link,
    required this.datacria,
    required this.createdat,
    required this.updatedat,
  });
}
