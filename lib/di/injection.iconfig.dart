// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt getIt, {String environment}) {
  getIt
    ..registerFactory<HomeStore>(() => HomeStore())
    ..registerFactory<RepoListStore>(() => RepoListStore());
}
