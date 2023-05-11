class ListRecommendationDto {
  final String status;
  final String message;
  final int total;
  final List<Map<String, dynamic>> data;

  ListRecommendationDto({
    required this.status,
    required this.message,
    required this.total,
    required this.data,
  });
}
