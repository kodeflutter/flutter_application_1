import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'posts.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
// dart run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class Posts {
  Posts({this.id, this.title, this.body});

  int? id;
  String? title;
  String? body;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
  Map<String, dynamic> toJson() => _$PostsToJson(this);
}

Future<List<Posts>> fetchPosts() async {
  try {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
    var response = await http.get(url);

    var jsonList = jsonDecode(response.body) as List<dynamic>;
    List<Posts> postList = jsonList.map((postJson) => Posts.fromJson(postJson)).toList();

    return postList;
  } catch (err) {
    throw Exception("Exception occured");
  }
}
