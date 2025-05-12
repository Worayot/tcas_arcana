import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:options/global.dart';
import 'package:options/models/scores.dart';

Future<Map<String, dynamic>> postData(Scores scores) async {
  // URL of your FastAPI server
  final url = Uri.parse('${GlobalState.backend}/get_hope');

  // Send POST request
  try {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(scores),
    );

    // Return the status code and the response body
    return {
      'statusCode': response.statusCode,
      'response': json.decode(response.body),
    };
  } catch (e) {
    // In case of error (e.g., no internet, timeout), return the error
    return {'statusCode': 500, 'response': 'Error: $e'};
  }
}
