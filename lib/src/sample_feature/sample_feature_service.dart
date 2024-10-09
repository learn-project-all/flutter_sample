import 'dart:convert';
import 'package:flutter_application_1/src/sample_feature/sample_item.dart';
import 'package:http/http.dart' as http;

class SampleFeatureService {
  Future<List<PhoneNumDM>> fetchData() async {
    final response = await http.get(
      Uri.parse('https://v2.dev.geta-head.com/api/v2/lookup/phone'),
      headers: {'apikey': 'NXn9VCmNLYjlkcv9StbDq9LnVm2dX7OL'},
    );
    // TODO: Add data deserialization

    return [];
  }
}
