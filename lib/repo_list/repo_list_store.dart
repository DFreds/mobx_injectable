import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_injectable/di/injection.dart';
import 'package:mobx_injectable/models/github_repo_result.dart';
import 'package:mobx_injectable/services/github_service.dart';

part 'repo_list_store.g.dart';

@injectable
class RepoListStore extends _RepoListStore with _$RepoListStore {}

abstract class _RepoListStore with Store {
  final GithubService githubService = getIt<GithubService>();

  GithubRepoResult repoResult = GithubRepoResult.initial();

  static ObservableFuture<GithubRepoResult> emptyResponse =
      ObservableFuture<GithubRepoResult>.value(GithubRepoResult.initial());

  // We are starting with an empty future to avoid a null check
  @observable
  ObservableFuture<GithubRepoResult> queryReposFuture = emptyResponse;

  @observable
  String query = '';

  @computed
  bool get isError => queryReposFuture.status == FutureStatus.rejected;

  @computed
  bool get isLoading => queryReposFuture.status == FutureStatus.pending;

  @computed
  bool get hasResults => queryReposFuture != emptyResponse && queryReposFuture.status == FutureStatus.fulfilled;

  @action
  Future<GithubRepoResult> queryRepos() async {
    print('Querying repos with $query');
    final Future<GithubRepoResult> future = githubService.loadRepoResult(query);
    queryReposFuture = ObservableFuture<GithubRepoResult>(future);

    repoResult = await future;

    print('total repos are ${repoResult.totalCount}');

    return repoResult;
  }

  @action
  void setQuery(String query) {
    this.query = query;
  }
}
