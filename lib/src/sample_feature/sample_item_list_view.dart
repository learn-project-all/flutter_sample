import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/localization/app_localizations.dart';
import 'package:flutter_application_1/src/sample_feature/sample_feature_controller.dart';

class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
    required this.controller,
  });

  final SampleFeatureController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
      body: Column(
        children: [
          ElevatedButton(onPressed: controller.fetchData, child: const Text('Fetch Data')),
          // TODO: Display the list of items, onTap of each item navigate to SampleItemDetailsView
        ],
      ),
    );
  }
}
