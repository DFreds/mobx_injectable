// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepoResult _$GithubRepoResultFromJson(Map<String, dynamic> json) {
  return GithubRepoResult(
    totalCount: json['total_count'] as int,
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Repo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GithubRepoResultToJson(GithubRepoResult instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
