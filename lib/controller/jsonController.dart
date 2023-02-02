import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';

class JsonController {
  accessJson() async {
    Map<String, dynamic> data = {};

    String response = await rootBundle.loadString('assets/content.json');

    print(response);

    var url = jsonDecode(response);

    data['video'] = url['video'];
    data['audio'] = url['audio'];
    data['pdf'] = url['pdf'];

    print('data' + data.toString());

    return data;
  }
}
