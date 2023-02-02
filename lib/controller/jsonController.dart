import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';

class JsonController {
  currentJson(String action) async {
    Map<String, dynamic> data = {};

    String response = await rootBundle.loadString('assets/content.json');

    print(response);

    data = jsonDecode(response);

    print('data' + data.toString());

    print(data[action]);

    return data[action];
  }
}
