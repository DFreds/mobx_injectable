// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  Computed<String> _$greetingComputed;

  @override
  String get greeting =>
      (_$greetingComputed ??= Computed<String>(() => super.greeting)).value;

  final _$countAtom = Atom(name: '_HomeStore.count');

  @override
  int get count {
    _$countAtom.context.enforceReadPolicy(_$countAtom);
    _$countAtom.reportObserved();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.context.conditionallyRunInAction(() {
      super.count = value;
      _$countAtom.reportChanged();
    }, _$countAtom, name: '${_$countAtom.name}_set');
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void increaseCount() {
    final _$actionInfo = _$_HomeStoreActionController.startAction();
    try {
      return super.increaseCount();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetCount() {
    final _$actionInfo = _$_HomeStoreActionController.startAction();
    try {
      return super.resetCount();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'count: ${count.toString()},greeting: ${greeting.toString()}';
    return '{$string}';
  }
}
