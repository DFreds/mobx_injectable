import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/router.gr.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = Provider.of<HomeStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Observer(
        builder: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(homeStore.greeting),
              FlatButton(
                child: const Text('Go To Detail Screen'),
                onPressed: () {
                  Router.navigator.pushNamed(
                    Router.detailScreenRoute,
                    arguments: homeStore.count,
                  );
                },
              ),
              RaisedButton(
                child: const Text('Search Repos'),
                onPressed: () => Navigator.of(context).pushNamed(
                  Router.repoListScreenRoute,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: homeStore.increaseCount,
      ),
    );
  }
}
