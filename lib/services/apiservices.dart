import 'dart:convert';

import 'package:api_fetch/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<DataModel?> getDataModel() async {
    try {
      var url = "https://dummyjson.com/users";
      var response = await http.get(Uri.parse(url));
      debugPrint(response.body);
      if (response.statusCode == 200) {
        DataModel model = DataModel.fromJson(json.decode(response.body));
        return model;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
