import 'package:flutter/material.dart';
import 'package:git/models/post_model.dart';
import 'package:git/services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PostModel>? _posts = null;

  @override
  void initState(){
    super.initState();
    _getData();
  }

  void _getData() async{
    print("đang lấy");
    _posts = await ApiService().getPosts();

    if (_posts != null) {
      // Kiểm tra _posts không phải null và không phải là danh sách rỗng
      print(_posts![0].getTitle());
    }
  }

  void _postData() async{
    print("đang tạo");
    _posts = await ApiService().createPost(PostModel(111, 22, "dsaf", "fdsaf"));
  }

  void _deleteData() async{
    print("đang xoá");
    _posts = await ApiService().deletePost(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello my home")),
      body: _posts == null ?
          Center(child: CircularProgressIndicator(),):
          Center(
            child: Column(
              children: [
               Expanded(child:  ListView.builder(
                 itemCount: _posts!.length,
                 itemBuilder: (context,i) => ListTile(
                   title: Text("${_posts![i].getTitle()}"),
                   trailing: Text("id ${_posts![i].getId()}"),
                 ),
               ),),
                ElevatedButton(
                    onPressed: ()=>{
                      _postData()
                    },
                    child: Text("create")),
                ElevatedButton(
                    onPressed: ()=>{
                      _deleteData()
                    },
                    child: Text("delete"))
              ],
            ),
          )
    );
  }
}

