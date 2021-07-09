// To parse this JSON data, do
//
//     final mapType = mapTypeFromJson(jsonString);

import 'dart:convert';

MapType mapTypeFromJson(String str) => MapType.fromJson(json.decode(str));

String mapTypeToJson(MapType data) => json.encode(data.toJson());

class MapType {
    MapType({
        this.id,
        this.name,
        this.age,
    });

    int id;
    String name;
    String age;

    factory MapType.fromJson(Map<String, dynamic> json) => MapType(
        id: json["id"],
        name: json["Name"],
        age: json["Age"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "Age": age,
    };
}
