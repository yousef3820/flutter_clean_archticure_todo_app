import 'package:dio/dio.dart';
import 'package:flutter_clean_archticure_todo_app/core/databases/apis/dio_consumer.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/data/datasources/remote_data_source.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/data/repos/get_usertodo_repo_impl.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/usecases/get_user_to_do.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton<Dio>(() => Dio());

  locator.registerLazySingleton<DioConsumer>(
    () => DioConsumer(dio: locator<Dio>()),
  );

  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSource(apiConsumer: locator<DioConsumer>()),
  );

  locator.registerLazySingleton<GetUsertodoRepoImpl>(
    () => GetUsertodoRepoImpl(dataSource: locator<RemoteDataSource>()),
  );

  locator.registerLazySingleton<GetUserToDo>(
    () => GetUserToDo(getUserToDoRepo: locator<GetUsertodoRepoImpl>()),
  );
}
