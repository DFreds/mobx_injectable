import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx_injectable/models/github_repo_result.dart';
import 'package:mobx_injectable/services/github_web_client.dart';

@lazySingleton
class GithubService {
  const GithubService({
    @required this.githubWebClient,
  });

  final GithubWebClient githubWebClient;

  Future<GithubRepoResult> loadRepoResult(String query) async {
    return await githubWebClient.fetchRepoResult(query);
  }
//
//  Future<OwnerDetailsResult> loadOwnerDetails(String owner) async {
//    return await githubWebClient.fetchOwnerDetails(owner);
//  }
}
