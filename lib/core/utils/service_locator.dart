import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/api_services.dart';
import 'package:flutter_application_1/features/home/data/repo/home_repo_implement.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio()
    )
  );
  getIt.registerSingleton<HomeRepoImpelment>(
    HomeRepoImpelment(
      ApiService(
        Dio()
      )
    )
  );
}