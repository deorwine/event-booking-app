class EventModel {
  EventModel({
    this.image,
    this.name,
    this.type,
    this.company,
    this.date,
    this.time,
    this.location,
  });

  String image;
  String name;
  String type;
  String company;
  String date;
  String time;
  String location;

  factory EventModel.fromJson(Map<String, String> json) => EventModel(
        image: json["image"],
        name: json["name"],
        type: json["type"],
        date: json["date"],
        company: json["company"],
        time: json["time"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "type": type,
        "date": date,
        "company": company,
        "time": time,
        "location": location,
      };
}
