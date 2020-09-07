import 'dart:convert';
import 'package:arvore_app/library/book.dart';
import "package:http/http.dart" as http;

class Api {
  static const URI = "https://arvore-app-api.herokuapp.com";

  Future<List<Book>> http_get(String route, [dynamic data]) async {
    var dataStr = jsonEncode(data);
    var url = "$URI/$route";
    http.Response response = await http.get(url);
    return decode(response);
  }
  Future<List<Book>> http_get_book(String route, [dynamic data]) async {
    var dataStr = jsonEncode(data);
    var url = "$URI/$route";
    http.Response response = await http.get(url);
    return decode(response);
  }

  Future<List<Book>> http_post(String route, [dynamic data]) async {
    var url = "$URI/$route";
    var dataStr = jsonEncode(data);
    http.Response response = await http
        .post(url, body: dataStr, headers: {"Content-Type": "application/json"});
    return decode(response);
  }

}


List<Book> decode(http.Response response) {
  List<Book> books;
  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    books = data.map((i)=>Book.fromJson(i)).toList();
  }
  return books;
}
