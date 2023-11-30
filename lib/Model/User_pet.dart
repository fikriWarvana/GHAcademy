import 'dart:convert';

UsersArtist usersPetsFromJson(String str) =>
    UsersArtist.fromJson(json.decode(str));

String usersPetsToJson(UsersArtist data) => json.encode(data.toJson());

class UsersArtist {
  UsersArtist({
    required this.data,
  });

  final List<Datum> data;

  factory UsersArtist.fromJson(Map<String, dynamic> json) => UsersArtist(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.userName,
    required this.petName,
    required this.petImage,
    required this.isFriendly,
  });

  final int id;
  final String userName;
  final String petName;
  final String petImage;
  final bool isFriendly;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userName: json["userName"],
        petName: json["petName"],
        petImage: json["petImage"],
        isFriendly: json["isFriendly"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "petName": petName,
        "petImage": petImage,
        "isFriendly": isFriendly,
      };
}
