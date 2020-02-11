// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:mobx_injectable/home/home_screen.dart';
import 'package:mobx_injectable/detail/detail_screen.dart';
import 'package:mobx_injectable/repo_list/repo_list_screen.dart';

class Router {
  static const homeScreenRoute = '/';
  static const detailScreenRoute = '/detail-screen-route';
  static const repoListScreenRoute = '/repo-list-screen-route';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homeScreenRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case Router.detailScreenRoute:
        if (hasInvalidArgs<int>(args, isRequired: true)) {
          return misTypedArgsRoute<int>(args);
        }
        final typedArgs = args as int;
        return MaterialPageRoute(
          builder: (_) => DetailScreen(count: typedArgs),
          settings: settings,
        );
      case Router.repoListScreenRoute:
        return MaterialPageRoute(
          builder: (_) => RepoListScreen(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
