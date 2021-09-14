import 'dart:convert';

import 'package:pixo/src/models/User.dart';

class Post {
  String? _id;
  String _picture;
  String _caption;
  User _user;
  

  Post(
    this._picture,
    this._caption,
    this._user,
  );

  /* getters and setters */
  String? get id => this._id;

  set id(String? value) => this._id = value;

  String get picture => this._picture;

  set picture(String value) => this._picture = value;

  get caption => this._caption;

  set caption(value) => this._caption = value;

  User get user => this._user;

  set user(User value) => this._user = value;

  /* Post copyWith({
    String? id,
    String? picture,
    String? caption,
    User? user,
  }) {
    return Post(
      _id ?? this._id,
      _picture ?? this._picture,
      _caption ?? this._caption,
      _user ?? this._user,
    );
  } */

  Map<String, dynamic> toMap() {
    return {
      '_id': _id,
      '_picture': _picture,
      '_caption': _caption,
      '_user': _user.toMap(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      map['_picture'],
      map['_caption'],
      User.fromMap(map['_user']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(_id: $_id, _picture: $_picture, _caption: $_caption, _user: $_user)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Post &&
      other._id == _id &&
      other._picture == _picture &&
      other._caption == _caption &&
      other._user == _user;
  }

  @override
  int get hashCode {
    return _id.hashCode ^
      _picture.hashCode ^
      _caption.hashCode ^
      _user.hashCode;
  }
}
