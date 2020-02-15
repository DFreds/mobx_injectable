import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx_injectable/di/injection.iconfig.dart';

// NOTE: https://resocoder.com/2020/02/04/injectable-flutter-dart-equivalent-to-dagger-angular-dependency-injection/

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() {
  $initGetIt(getIt);
}
