import 'package:flutter/material.dart';

import '../components/genericlist.dart';

class GenericScreen<T> extends StatelessWidget {
  final Future<List<T>> futureItems;
  final String Function(T) getTitle;
  final String appBarTitle;

  const GenericScreen({Key? key, required this.futureItems, required this.getTitle, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: GenericList<T>(futureItems: futureItems, getTitle: getTitle),
    );
  }
}
