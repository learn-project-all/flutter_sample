import 'package:flutter_application_1/src/sample_feature/sample_user.dart';
import 'package:http/http.dart' as http;

class SampleFeatureService {
  Future<List<SampleUserDM>> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    // TODO: Add data deserialization

    return [];
  }
}
