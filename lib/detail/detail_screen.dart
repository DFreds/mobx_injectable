import 'package:flutter/material.dart';
import 'package:mobx_injectable/home/home_store.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    @required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = Provider.of<HomeStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Previous count is $count'),
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
