import 'package:flutter/material.dart';

class GenericList<T> extends StatelessWidget {
  final Future<List<T>> futureItems;
  final String Function(T) getTitle;

  const GenericList({Key? key, required this.futureItems, required this.getTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<T>>(
      future: futureItems,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(getTitle(snapshot.data![index])),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
