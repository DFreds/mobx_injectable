// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
import 'package:mobx_injectable/services/github_web_client.dart';
import 'package:mobx_injectable/services/github_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt getIt, {String environment}) {
  getIt
    ..registerFactory<HomeStore>(() => HomeStore())
    ..registerFactory<RepoListStore>(() => RepoListStore())
    ..registerLazySingleton<GithubWebClient>(() => GithubWebClient())
    ..registerLazySingleton<GithubService>(
        () => GithubService(githubWebClient: getIt<GithubWebClient>()));
}
