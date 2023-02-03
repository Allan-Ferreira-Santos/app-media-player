import 'dart:convert';

import 'package:flutter/services.dart';

class JsonController {
  /*
  * consuming json
  * @author  Allan F Santos
  * @version 1.0 - 20230102 - initial release
  * param <String> action - action for the url
  * @return  data[action]
  */

  currentJson(String action) async {
    Map<String, dynamic> data = {};

    String response = await rootBundle.loadString('assets/content.json');

    data = jsonDecode(response);

    return data[action];
  }
}
