import 'package:http/http.dart' as http;
import 'dart:core';
Future<void> printBbCharacters() async {
  var response = await http.get(Uri.parse("https://breakingbadapi.com/characters"));
  print(response.body);
}
