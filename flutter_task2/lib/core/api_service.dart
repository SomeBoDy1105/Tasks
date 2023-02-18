import 'dart:convert';

import 'package:http/http.dart';

import '../features/api_todo/models/todo_info.dart';
import 'api_url.dart';

class ApiService {
  static Future<List<ToDoInfo>> getToDos() async {
    try {
      Response response = await get(_parseUrl(ApiUrl.getToDos));
      final body = jsonDecode(response.body);
      final decodedData = ToDosInfo.fromList(body);

      return Future.value(decodedData.todos);
    } catch (e) {
      throw Exception("Catch error: $e");
    }
  }

  static Uri _parseUrl(String url) => Uri.parse(url);
}
