class ParticipantsUsersModel {
  ParticipantsUsersModel({
    this.image,
  });

  String image;

  factory ParticipantsUsersModel.fromJson(Map<String, String> json) =>
      ParticipantsUsersModel(
        image: json["image"],
      );

  Map<String, String> toJson() => {
        "image": image,
      };
}
