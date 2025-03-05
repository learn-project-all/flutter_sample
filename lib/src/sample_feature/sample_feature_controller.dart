import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/sample_feature/sample_feature_service.dart';
import 'package:flutter_application_1/src/sample_feature/sample_item.dart';

class SampleFeatureController with ChangeNotifier {
  final SampleFeatureService _samplefeatureService;

  SampleFeatureController(this._samplefeatureService);

  List<PhoneNumDM> _items = [];
  List<PhoneNumDM> get items => _items;

  // TODO: Implement fetchData
  void fetchData() {}
}
