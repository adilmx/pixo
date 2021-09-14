import 'dart:convert';

class AccessInfos {
  String? _id;
  String _email;
  String _username;
  String _password;

  AccessInfos(
    this._email,
    this._username,
    this._password,
  );

  /* getters and setters */
  String? get id => this._id;

  set id(String? value) => this._id = value;

  String get email => this._email;

  set email(String value) => this._email = value;

  String get username => this._username;

  set username(String value) => this._username = value;

  String get password => this._password;

  set password(String value) => this._password = value;

  /* AccessInfos copyWith({
    String? id,
    String? email,
    String? username,
    String? password,
  }) {
    return AccessInfos(
      _id ?? this._id,
      _email ?? this._email,
      _username ?? this._username,
      _password ?? this._password,
    );
  } */

  Map<String, dynamic> toMap() {
    return {
      '_id': _id,
      '_email': _email,
      '_username': _username,
      '_password': _password,
    };
  }

  factory AccessInfos.fromMap(Map<String, dynamic> map) {
    return AccessInfos(
      map['_email'],
      map['_username'],
      map['_password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AccessInfos.fromJson(String source) => AccessInfos.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AccessInfos(_id: $_id, _email: $_email, _username: $_username, _password: $_password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AccessInfos &&
      other._id == _id &&
      other._email == _email &&
      other._username == _username &&
      other._password == _password;
  }

  @override
  int get hashCode {
    return _id.hashCode ^
      _email.hashCode ^
      _username.hashCode ^
      _password.hashCode;
  }
}
