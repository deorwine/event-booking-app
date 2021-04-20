class NearByModel {
  NearByModel({
    this.image,
    this.name,
    this.date,
    this.distance,
  });

  String image;
  String name;
  String date;
  String distance;

  factory NearByModel.fromJson(Map<String, String> json) => NearByModel(
        image: json["image"],
        name: json["name"],
        date: json["date"],
        distance: json["distance"],
      );

  Map<String, String> toJson() => {
        "image": image,
        "name": name,
        "date": date,
        "distance": distance,
      };
}
