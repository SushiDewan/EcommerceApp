import 'dart:convert';

import 'package:ecommerceapp/core/api/strings.dart';
import 'package:ecommerceapp/core/api/api_model.dart';
import 'package:http/http.dart' as http;

class ApiConstants {
  Future<Welcome> getData() async {
    var client = http.Client();
    var welcome = null;
    try {
      var url = Uri.parse(Strings.model);
      var response = await client.get(url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        welcome = Welcome.fromJson(jsonMap);
      }
    } catch (e) {
      return welcome;
    }
    return welcome;
  }
}


// 4 types
// Get //View
// Post //Create //Security
// put //Edit
// delete //Delete