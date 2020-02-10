import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

/// This is an individual owner.class
///
/// See these links for examples:
/// [https://api.github.com/search/repositories?q=python&sort=stars]
/// [https://api.github.com/users/dfreds]
@JsonSerializable()
class Owner {
  Owner({
    this.login,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  final String login;
}
