import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_injectable/models/repo.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
import 'package:provider/provider.dart';

class RepoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repo List'),
      ),
      body: Column(
        children: <Widget>[
          SearchField(),
          TotalResultsText(),
          Expanded(
            child: RepoList(),
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RepoListStore repoListStore = Provider.of<RepoListStore>(context);

    return Container(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: const InputDecoration(
          alignLabelWithHint: true,
          labelText: 'Query',
        ),
        onChanged: (String query) {
          repoListStore.setQuery(query);

          if (query.length < 3) {
            return;
          }

          repoListStore.queryRepos();
        },
      ),
    );
  }
}

class TotalResultsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RepoListStore repoListStore = Provider.of<RepoListStore>(context);

    return Observer(
      builder: (BuildContext context) {
        if (repoListStore.isLoading) {
          return Container();
        }

        if (repoListStore.isError) {
          return Container();
        }

        if (!repoListStore.hasResults) {
          return Container();
        }

        return Container(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text('${repoListStore.repoResult.totalCount} results'),
        );
      },
    );
  }
}

class RepoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RepoListStore repoListStore = Provider.of<RepoListStore>(context);

    return Observer(
      builder: (BuildContext context) {
        if (repoListStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (repoListStore.isError) {
          return const Center(
            child: Text('Failed'),
          );
        }

        if (!repoListStore.hasResults) {
          return const Center(
            child: Text('No results'),
          );
        }

        final List<Repo> repoItems = repoListStore.repoResult.items;

        return ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            final Repo currentRepo = repoItems[index];

            return ListTile(
              title: Text('${currentRepo.name}'),
              subtitle: Text(
                'Owner: ${currentRepo.owner.login}',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('${currentRepo.stars}'),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                  ),
                ],
              ),
              onTap: () => print('tapped'),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: repoItems.length,
        );
      },
    );
  }
}
