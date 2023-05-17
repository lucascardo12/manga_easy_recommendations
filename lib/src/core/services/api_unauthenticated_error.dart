import 'package:manga_easy_recommendations/src/core/services/api_error.dart';

class ApiUnauthenticatedError implements ApiError {
  @override
  String message = 'Usuário não autenticado';
}
