import 'package:json_annotation/json_annotation.dart';
import 'package:mobx_injectable/models/owner.dart';

part 'repo.g.dart';

/// This is an individual repo information.
///
/// See this link for an example: [https://api.github.com/search/repositories?q=python&sort=stars]
@JsonSerializable()
class Repo {
  Repo({
    this.name,
    this.owner,
    this.stars,
  });

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
  Map<String, dynamic> toJson() => _$RepoToJson(this);

  final String name;
  final Owner owner;
  @JsonKey(name: 'stargazers_count')
  final int stars;
}
