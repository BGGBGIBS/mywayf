import 'package:flutter/material.dart';
import 'package:mywayf/models/aresdataset.dart';
import 'package:mywayf/screens/genericscreen.dart';
import 'package:mywayf/services/aresService.dart';

class AresDatasetScreen extends StatelessWidget {
  final AresService aresService = AresService();

  AresDatasetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericScreen<AresDataset>(
      futureItems: aresService.getAresDatasets(),
      getTitle: (aresDataset) => aresDataset.datasetId,
      appBarTitle: 'Ares Datasets',
    );
  }
}
