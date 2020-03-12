import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:mobx_injectable/detail/detail_screen.dart';
import 'package:mobx_injectable/home/home_screen.dart';
import 'package:mobx_injectable/repo_list/repo_list_screen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreen homeScreenRoute;

  @MaterialRoute(fullscreenDialog: true)
  DetailScreen detailScreenRoute;

  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    durationInMilliseconds: 200,
  )
  RepoListScreen repoListScreenRoute;
}
