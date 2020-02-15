// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
import 'package:dio/dio.dart';
import 'package:mobx_injectable/api/github_api.dart';
import 'package:dio/src/dio.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<HomeStore>(() => HomeStore());
  g.registerFactory<RepoListStore>(() => RepoListStore());
  g.registerLazySingleton<Dio>(() => Dio());
  g.registerLazySingleton<GithubApi>(() => GithubApi(
        g<Dio>(),
        baseUrl: g<String>(),
      ));
}
