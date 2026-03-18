import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class NewsApi {
  Future<List<dynamic>> fetchData() async {
    print("Data is searching...");
    final url = Uri.parse(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=ff99f81d612c466c944cd74a60e36799',
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> newsList = jsonDecode(response.body);
        return newsList['articles'];
      } else {
        return [];
      }
    } catch (e) {
      print("Error: $e");
      return [];
      ;
    }
  }
}
