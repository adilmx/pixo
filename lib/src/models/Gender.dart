import 'dart:convert';

class Gender {
  String? _id;
  String _gender;

  Gender(
    this._gender,
  );

  /* getters and setters */
  String? get getId => this._id;

  set setId(String? id) => this._id = id;

  String get getGender => this._gender;

  set setGender(String gender) => this._gender = gender;

  /* Gender copyWith({
    String? id,
    String? gender,
  }) {
    return Gender(
      _id ?? this._id,
      _gender ?? this._gender,
    );
  } */

  Map<String, dynamic> toMap() {
    return {
      '_id': _id,
      '_gender': _gender,
    };
  }

  factory Gender.fromMap(Map<String, dynamic> map) {
    return Gender(
      map['_gender'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Gender.fromJson(String source) => Gender.fromMap(json.decode(source));

  @override
  String toString() => 'Gender(_id: $_id, _gender: $_gender)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Gender &&
      other._id == _id &&
      other._gender == _gender;
  }

  @override
  int get hashCode => _id.hashCode ^ _gender.hashCode;
}
