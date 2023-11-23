class PostModel{
   int _userId;
   int _id;
   String _title;
   String _body;

  PostModel(this._userId,this._id,this._title,this._body);

  int getUserId() => _userId;
  int getId() => _userId;
  String getTitle() => _title;
  String getBody() => _body;

  Map<String,dynamic> toJson(){
    return {
      'userId': _userId,
      'id': _id,
      "title": _title,
      "body": _body
    };
  }
}