import 'package:json_annotation/json_annotation.dart';
import 'package:mobx_injectable/models/repo.dart';

part 'github_repo_result.g.dart';

@JsonSerializable()
class GithubRepoResult {
  GithubRepoResult({
    this.totalCount,
    this.items,
  });

  factory GithubRepoResult.initial() {
    return GithubRepoResult(
      totalCount: 0,
      items: <Repo>[],
    );
  }

  factory GithubRepoResult.fromJson(Map<String, dynamic> json) => _$GithubRepoResultFromJson(json);
  Map<String, dynamic> toJson() => _$GithubRepoResultToJson(this);

  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<Repo> items;
}
