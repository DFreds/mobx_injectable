// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GithubApi implements GithubApi {
  _GithubApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://api.github.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getRepoResult(query, {sort = 'stars'}) async {
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{'q': query, 'sort': sort};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/search/repositories',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GithubRepoResult.fromJson(_result.data);
    return Future.value(value);
  }
}
