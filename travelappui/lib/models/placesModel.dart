import 'dart:convert';

PlaceModel userModelFromJson(String str) => PlaceModel.fromJson(json.decode(str));

String userModelToJson(PlaceModel data) => json.encode(data.toJson());


class PlaceModel{

  String placeTitle;
  String locationShort;
  double rating;
  String description;
  int duration;
  double rateperpackage;
  String imgUrl;

  PlaceModel({this.placeTitle,this.locationShort,this.rateperpackage,this.rating,this.description,this.duration, this.imgUrl});

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
    placeTitle: json["name"],
    locationShort: json["job"],
    rating: json["id"],
    description: DateTime.parse(json["createdAt"]),
    duration: DateTime.parse(json["createdAt"]),
    rateperpackage: DateTime.parse(json["createdAt"]),
    imgUrl: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "job": job,
    "id": id,
    "createdAt": createdAt.toString(),
  };

}