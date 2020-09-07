import 'dart:convert';
import "package:http/http.dart" as http;

class Api {
  static const URI = "https://arvore-app-api.herokuapp.com";

  Future<RequestResult> http_get(String route, [dynamic data]) async {
    var dataStr = jsonEncode(data);
    var url = "$URI/$route";
    var result  = await http.get(url);
    return RequestResult(true, jsonDecode(result.body));
  }

  Future<RequestResult> http_get_book(String route, [dynamic data]) async {
    var dataStr = jsonEncode(data);
    var url = "$URI/$route";
    var result  = await http.get(url);
    return RequestResult(true, jsonDecode(result.body));
  }

  Future<RequestResult> http_post(String route, [dynamic data]) async {
    var url = "$URI/$route";
    var dataStr = jsonEncode(data);
    var result = await http.post(url,
        body: dataStr, headers: {"Content-Type": "application/json"});
    return RequestResult(true, jsonDecode(result.body));
  }
}

// List<Book> decode(http.Response response) {
//   List<Book> books;
//   if (response.statusCode == 200) {
//     var data = json.decode(response.body);
//     books = data.map((i) => Book.fromJson(i));
//   }
//   return books;
// }

class RequestResult {
  bool ok;
  dynamic data;
  RequestResult(this.ok, this.data);
}
