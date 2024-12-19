import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
      
    } else {
      return response.statusCode;
    }
  }
}
