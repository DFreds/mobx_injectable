import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx_injectable/models/github_repo_result.dart';
import 'package:retrofit/retrofit.dart';

part 'github_api.g.dart';

@RestApi(baseUrl: 'https://api.github.com/')
abstract class GithubApi {
  @factoryMethod
  factory GithubApi(Dio dio, {String baseUrl}) = _GithubApi;

  @GET('/search/repositories')
  Future<GithubRepoResult> getRepoResult(@Query('q') String query, {@Query('sort') String sort = 'stars'});

//  @GET('/users/{owner}')
//  Future<OwnerDetailsResult> getOwnerDetails(@Path('owner') String owner);
}
