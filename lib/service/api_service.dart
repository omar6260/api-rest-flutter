import '../models/post.dart';

import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Post>?> getPost() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    // get url
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
