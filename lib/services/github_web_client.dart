import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mobx_injectable/models/github_repo_result.dart';

@lazySingleton
class GithubWebClient {
  static String baseURL = 'https://api.github.com';

  Future<GithubRepoResult> fetchRepoResult(String query) async {
    final http.Response response = await http.get('$baseURL/search/repositories?q=$query&sort=stars');
    final Map<String, dynamic> githubRepoResultJson = json.decode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      return GithubRepoResult.fromJson(githubRepoResultJson);
    } else {
      throw Exception('Failed to load repos');
    }
  }

//  Future<OwnerDetailsResult> fetchOwnerDetails(String owner) async {
//    final response = await http.get('$baseURL/users/$owner');
//
//    var ownerDetailsJson = json.decode(response.body);
//
//    if (response.statusCode == 200) {
//      return OwnerDetailsResult.fromJson(ownerDetailsJson);
//    } else {
//      throw Exception('Failed to load owner details');
//    }
//  }
}
