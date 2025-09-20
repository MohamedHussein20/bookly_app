import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<HomeRepositoryImpl>(
    HomeRepositoryImpl(
      ApiService(Dio()),
    ),
  );
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
}
