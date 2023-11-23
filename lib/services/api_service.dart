import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:git/apis/post_api.dart';
import 'package:git/models/post_model.dart';

class ApiService{
  // Future là cơ chế để sử lý bất đồng bộ
  Future<List<PostModel>?> getPosts() async {
      try{
        var url = Uri.parse(PostApi.baseUrl + PostApi.postEndpoint);
        var res =await http.get(url);
        var data = await jsonDecode(res.body);
        print(res.statusCode);
        if(res.statusCode == 200){
          List<PostModel> _model = List<PostModel>.from(data.map((data) => PostModel(
            data['userId'],
            data['id'],
            data['title'],
            data['body'],
          )));

          return _model;
        }else{
          return null;
        }
      }catch(e){
        print("Lỗi");
        log(e.toString());
      }
  }

  Future createPost(PostModel newPost) async {
    var url = Uri.parse(PostApi.baseUrl + PostApi.postEndpoint);

    try{
      String jsonBody = jsonEncode(newPost.toJson());

      final res = await http.post(
        Uri.parse(url.toString()),
        headers: {'Content-Type': 'application/json'},
        body: jsonBody
      );
      var a = jsonDecode(res.body);


    } catch(e){
      log(e.toString());
    }
  }

  Future deletePost(int id) async {
    var url = Uri.parse(PostApi.baseUrl + PostApi.postEndpoint + '/?id=${id}');
    try{

    } catch(e){
      log(e.toString());
    }
  }

  Future updatePost(int id, PostModel newPost) async {
    var url = Uri.parse(PostApi.baseUrl + PostApi.postEndpoint + '/?id=${id}');
    try{

    } catch(e){
      log(e.toString());
    }
  }
}