// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:mobx_injectable/di/register_module.dart';
import 'package:mobx_injectable/api/github_api.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule(g);
  g.registerLazySingleton<Dio>(() => registerModule.dio);
  g.registerLazySingleton<GithubApi>(() => registerModule.githubApi);
  g.registerFactory<HomeStore>(() => HomeStore());
  g.registerFactory<RepoListStore>(() => RepoListStore(g<GithubApi>()));
}

class _$RegisterModule extends RegisterModule {
  final GetIt _g;
  _$RegisterModule(this._g);
  @override
  GithubApi get githubApi => GithubApi(_g<Dio>());
}
