import 'package:flutter/material.dart';
import 'package:mobx_injectable/di/injection.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
import 'package:mobx_injectable/router.gr.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <Provider<Object>>[
        Provider<HomeStore>(
          create: (_) => getIt<HomeStore>(),
        ),
        Provider<RepoListStore>(
          create: (_) => getIt<RepoListStore>(),
        ),
      ],
      child: MaterialApp(
        initialRoute: Router.homeScreenRoute,
        navigatorKey: Router.navigator.key,
        onGenerateRoute: Router.onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
      ),
    );
  }
}
