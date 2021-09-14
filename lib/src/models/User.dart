import 'dart:convert';

import 'package:pixo/src/models/AccessInfos.dart';
import 'package:pixo/src/models/Gender.dart';

class User {
  String? _id;
  String _firstName;
  String _lastName;
  String _tele;
  String _bio;
  Gender _gender;
  String _birthDate;
  String _avatar;
  AccessInfos _accessInfos;

  User(
    this._firstName,
    this._lastName,
    this._tele,
    this._bio,
    this._gender,
    this._birthDate,
    this._avatar,
    this._accessInfos,
  );

  /* getters and setters */
  String? get id => this._id;

  set id(String? value) => this._id = value;

  String get firstName => this._firstName;

  set firstName(String value) => this._firstName = value;

  String get lastName => this._lastName;

  set lastName(String value) => this._lastName = value;

  String get tele => this._tele;

  set tele(String value) => this._tele = value;

  String get bio => this._bio;

  set bio(String value) => this._bio = value;

  Gender get gender => this._gender;

  set gender(Gender value) => this._gender = value;

  String get birthDate => this._birthDate;

  set birthDate(String value) => this._birthDate = value;

  String get avatar => this._avatar;

  set avatar(String value) => this._avatar = value;

  AccessInfos get accessInfos => this._accessInfos;

  set accessInfos(AccessInfos value) => this._accessInfos = value;

  /* User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? tele,
    String? bio,
    Gender? gender,
    String? birthDate,
    AccessInfos? accessInfos,
  }) {
    return User(
      _id ?? this._id,
      _firstName ?? this._firstName,
      _lastName ?? this._lastName,
      _tele ?? this._tele,
      _bio ?? this._bio,
      _gender ?? this._gender,
      _birthDate ?? this._birthDate,
      _accessInfos ?? this._accessInfos,
    );
  } */

  Map<String, dynamic> toMap() {
    return {
      '_id': _id,
      '_firstName': _firstName,
      '_lastName': _lastName,
      '_tele': _tele,
      '_bio': _bio,
      '_gender': _gender.toMap(),
      '_birthDate': _birthDate,
      '_avatar': _avatar,
      '_accessInfos': _accessInfos.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['_firstName'],
      map['_lastName'],
      map['_tele'],
      map['_bio'],
      Gender.fromMap(map['_gender']),
      map['_birthDate'],
      map['_avatar'],
      AccessInfos.fromMap(map['_accessInfos']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(_id: $_id, _firstName: $_firstName, _lastName: $_lastName, _tele: $_tele, _bio: $_bio, _gender: $_gender, _birthDate: $_birthDate, _avatar: $_avatar, _accessInfos: $_accessInfos)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other._id == _id &&
        other._firstName == _firstName &&
        other._lastName == _lastName &&
        other._tele == _tele &&
        other._bio == _bio &&
        other._gender == _gender &&
        other._birthDate == _birthDate &&
        other._avatar == _avatar &&
        other._accessInfos == _accessInfos;
  }

  @override
  int get hashCode {
    return _id.hashCode ^
        _firstName.hashCode ^
        _lastName.hashCode ^
        _tele.hashCode ^
        _bio.hashCode ^
        _gender.hashCode ^
        _birthDate.hashCode ^
        _avatar.hashCode ^
        _accessInfos.hashCode;
  }
}
