// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RepoListStore on _RepoListStore, Store {
  Computed<bool> _$isErrorComputed;

  @override
  bool get isError =>
      (_$isErrorComputed ??= Computed<bool>(() => super.isError)).value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading)).value;
  Computed<bool> _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults)).value;

  final _$queryReposFutureAtom = Atom(name: '_RepoListStore.queryReposFuture');

  @override
  ObservableFuture<GithubRepoResult> get queryReposFuture {
    _$queryReposFutureAtom.context.enforceReadPolicy(_$queryReposFutureAtom);
    _$queryReposFutureAtom.reportObserved();
    return super.queryReposFuture;
  }

  @override
  set queryReposFuture(ObservableFuture<GithubRepoResult> value) {
    _$queryReposFutureAtom.context.conditionallyRunInAction(() {
      super.queryReposFuture = value;
      _$queryReposFutureAtom.reportChanged();
    }, _$queryReposFutureAtom, name: '${_$queryReposFutureAtom.name}_set');
  }

  final _$queryAtom = Atom(name: '_RepoListStore.query');

  @override
  String get query {
    _$queryAtom.context.enforceReadPolicy(_$queryAtom);
    _$queryAtom.reportObserved();
    return super.query;
  }

  @override
  set query(String value) {
    _$queryAtom.context.conditionallyRunInAction(() {
      super.query = value;
      _$queryAtom.reportChanged();
    }, _$queryAtom, name: '${_$queryAtom.name}_set');
  }

  final _$queryReposAsyncAction = AsyncAction('queryRepos');

  @override
  Future<GithubRepoResult> queryRepos() {
    return _$queryReposAsyncAction.run(() => super.queryRepos());
  }

  final _$_RepoListStoreActionController =
      ActionController(name: '_RepoListStore');

  @override
  void setQuery(String query) {
    final _$actionInfo = _$_RepoListStoreActionController.startAction();
    try {
      return super.setQuery(query);
    } finally {
      _$_RepoListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'queryReposFuture: ${queryReposFuture.toString()},query: ${query.toString()},isError: ${isError.toString()},isLoading: ${isLoading.toString()},hasResults: ${hasResults.toString()}';
    return '{$string}';
  }
}
