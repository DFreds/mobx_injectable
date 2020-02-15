import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx_injectable/api/github_api.dart';

@registerModule
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  GithubApi get githubApi;
}
