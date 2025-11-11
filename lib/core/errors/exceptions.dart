import 'package:flutter_clean_archticure_todo_app/core/errors/error_model.dart';

class ServerExceptions implements Exception {
  final ErrorModel errorModel;

  ServerExceptions({required this.errorModel});
}
