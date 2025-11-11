import 'package:dio/dio.dart';
import 'package:flutter_clean_archticure_todo_app/core/errors/exceptions.dart';

class ErrorModel {
  final String errorMessage;
  final int id;

  ErrorModel({required this.errorMessage, required this.id});

  factory ErrorModel.fromjson(Map<String, dynamic> json) {
    return ErrorModel(errorMessage: json["errorMessage"], id: json["id"]);
  }
}

void handleExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.sendTimeout:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.receiveTimeout:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.badCertificate:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.cancel:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.connectionError:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.unknown:
      throw ServerExceptions(errorModel: e.response!.data);
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
          throw ServerExceptions(errorModel: e.response!.data);
        case 401:
          throw ServerExceptions(errorModel: e.response!.data);
      }
  }
}
