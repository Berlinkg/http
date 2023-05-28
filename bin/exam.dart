import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.parse('https: //jsonplaceholder.typicode.com/posts');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var posts = json.decode(response.body);
    // Process the posts data as needed
    for (var post in posts) {
      print(post);
    }
  } else {
    print('Failed to retrieve posts. Status code: ${response.statusCode}');
  }
}
