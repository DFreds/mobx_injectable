// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mobx_injectable/home/home_screen.dart';
import 'package:mobx_injectable/detail/detail_screen.dart';
import 'package:mobx_injectable/repo_list/repo_list_screen.dart';

class Router {
  static const homeScreenRoute = '/';
  static const detailScreenRoute = '/detail-screen-route';
  static const repoListScreenRoute = '/repo-list-screen-route';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homeScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case Router.detailScreenRoute:
        if (hasInvalidArgs<int>(args, isRequired: true)) {
          return misTypedArgsRoute<int>(args);
        }
        final typedArgs = args as int;
        return MaterialPageRoute<dynamic>(
          builder: (_) => DetailScreen(count: typedArgs),
          settings: settings,
          fullscreenDialog: true,
        );
      case Router.repoListScreenRoute:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (ctx, animation, secondaryAnimation) => RepoListScreen(),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          transitionDuration: Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
