import 'dart:convert';

import 'package:pixo/src/models/Post.dart';
import 'package:pixo/src/models/User.dart';

class FavoritePost {
  String? _id;
  User _user;
  Post _post;

  FavoritePost(
    this._user,
    this._post,
  );

  String? get id => this._id;

  set id(String? value) => this._id = value;

  User get user => this._user;

  set user(User value) => this._user = value;

  Post get post => this._post;

  set post(Post value) => this._post = value;

  

  /* FavoritePost copyWith({
    String? id,
    User? user,
    Post? post,
  }) {
    return FavoritePost(
       _user ?? this._user,
       _post ?? this._post,
    );
  } */

  Map<String, dynamic> toMap() {
    return {
      '_id': _id,
      '_user': _user.toMap(),
      '_post': _post.toMap(),
    };
  }

  factory FavoritePost.fromMap(Map<String, dynamic> map) {
    return FavoritePost(
      User.fromMap(map['_user']),
      Post.fromMap(map['_post']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoritePost.fromJson(String source) => FavoritePost.fromMap(json.decode(source));

  @override
  String toString() => 'FavoritePost(_id: $_id, _user: $_user, _post: $_post)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FavoritePost &&
      other._id == _id &&
      other._user == _user &&
      other._post == _post;
  }

  @override
  int get hashCode => _id.hashCode ^ _user.hashCode ^ _post.hashCode;
}
