// To parse this JSON data, do
//
//     final randomUser = randomUserFromJson(jsonString);

import 'dart:convert';

RandomUser randomUserFromJson(String str) =>
    RandomUser.fromJson(json.decode(str));

String randomUserToJson(RandomUser data) => json.encode(data.toJson());

class RandomUser {
  RandomUser({
    this.results,
  });

  factory RandomUser.fromJson(Map<String, dynamic> json) => RandomUser(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  List<Result>? results;

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.gender,
    this.email,
    this.picture,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        email: json["email"],
        picture: Picture.fromJson(json["picture"]),
      );

  String? email;
  String? gender;
  Picture? picture;

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "email": email,
        "picture": picture!.toJson(),
      };
}

class Picture {
  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
      );

  String? large;
  String? medium;
  String? thumbnail;

  Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
      };
}
