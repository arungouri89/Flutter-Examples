// To parse this JSON data, do
//
//     final listType = listTypeFromJson(jsonString);

import 'dart:convert';

List<ListType> listTypeFromJson(String str) => List<ListType>.from(json.decode(str).map((x) => ListType.fromJson(x)));

String listTypeToJson(List<ListType> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListType {
    ListType({
        this.userId,
        this.id,
        this.title,
    });

    int userId;
    int id;
    String title;

    factory ListType.fromJson(Map<String, dynamic> json) => ListType(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
    };
}
