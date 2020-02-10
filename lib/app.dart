import 'package:flutter/material.dart';
import 'package:mobx_injectable/detail/detail_screen.dart';
import 'package:mobx_injectable/di/injection.dart';
import 'package:mobx_injectable/home/home_screen.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:mobx_injectable/repo_list/repo_list_screen.dart';
import 'package:mobx_injectable/repo_list/repo_list_store.dart';
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
        initialRoute: HomeScreen.routeName,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        routes: <String, WidgetBuilder>{
          HomeScreen.routeName: (_) => HomeScreen(),
          DetailScreen.routeName: (_) => DetailScreen(),
          RepoListScreen.routeName: (_) => RepoListScreen(),
        },
      ),
    );
  }
}
