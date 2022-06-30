// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DataModel {
  int id;
  String cityname;
  String cityimage;
  String description;

  DataModel({
    required this.id,
    required this.cityname,
    required this.cityimage,
    required this.description,
  });

  DataModel copyWith({
    int? id,
    String? cityname,
    String? cityimage,
    String? description,
  }) {
    return DataModel(
      id: id ?? this.id,
      cityname: cityname ?? this.cityname,
      cityimage: cityimage ?? this.cityimage,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'cityname': cityname,
      'cityimage': cityimage,
      'description': description,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      id: map['id'] as int,
      cityname: map['cityname'] as String,
      cityimage: map['cityimage'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataModel(id: $id, cityname: $cityname, cityimage: $cityimage, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataModel &&
        other.id == id &&
        other.cityname == cityname &&
        other.cityimage == cityimage &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        cityname.hashCode ^
        cityimage.hashCode ^
        description.hashCode;
  }
}
