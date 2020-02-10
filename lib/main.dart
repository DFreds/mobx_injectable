import 'package:flutter/material.dart';
import 'package:mobx_injectable/app.dart';
import 'package:mobx_injectable/di/injection.dart';

void main() {
  configureInjection();
  runApp(App());
}
