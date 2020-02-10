import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_injectable/detail/detail_screen.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = Provider.of<HomeStore>(context);

    return Scaffold(
      body: Observer(
        builder: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(homeStore.greeting),
              FlatButton(
                child: const Text('Go To Detail Screen'),
                onPressed: () => Navigator.of(context).pushNamed(
                  DetailScreen.routeName,
                  arguments: '${homeStore.count}',
                ),
              ),
              RaisedButton(
                child: const Text('Search Repos'),
                onPressed: () => Navigator.of(context).pushNamed(
                  RepoListScreen.routeName,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => homeStore.increaseCount(),
      ),
    );
  }
}
