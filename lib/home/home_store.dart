import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

// NOTE: https://github.com/mobxjs/mobx.dart/tree/master/mobx_examples/lib/todos

@injectable
class HomeStore extends _HomeStore with _$HomeStore {}

abstract class _HomeStore with Store {
  @observable
  int count = 0;

  @computed
  String get greeting => count == 0 ? 'Press button' : 'Count $count';

  @action
  void increaseCount() {
    count++;
  }

  @action
  void resetCount() {
    count = 0;
  }
}
