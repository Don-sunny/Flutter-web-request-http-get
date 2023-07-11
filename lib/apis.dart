import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_methods/n_umber_fact/n_umber_fact.dart';

Future<NUmberFact> getNumberFact({required int number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  // final bodyAsJson = jsonEncode(response.body);
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;

  final data = NUmberFact.fromJson(bodyAsJson);

  return data;
}
