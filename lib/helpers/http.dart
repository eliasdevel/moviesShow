import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Http {
  static get(String url) async {
    
	print(url);
	var response = await http.get(url);
	print('asdasdasd');
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      throw ('Request failed with status: ${response.statusCode}.');
    }
  }

  static post(String url, Map data) async {
    var response = await http.post(url, body: data);

    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      throw ('Request failed with status: ${response.statusCode}.');
    }
  }
}
