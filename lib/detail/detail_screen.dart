import 'package:flutter/material.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = Provider.of<HomeStore>(context);
    final String args = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Previous count is $args'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.clear_all),
        label: const Text('Reset Counter'),
        onPressed: () {
          homeStore.resetCount();
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
