class EncounterModel {
  String images;
  String title;
  String subtitle;
  String title2;
  String title3;

  EncounterModel({
    required this.images,
    required this.title,
    required this.subtitle,
    required this.title2,
    required this.title3,
  });

  factory EncounterModel.fromJson(Map<String, dynamic> json) => EncounterModel(
    images: json["images"],
    title: json["title"],
    subtitle: json["subtitle"],
    title2: json["title2"],
    title3: json["title3"],
  );

  Map<String, dynamic> toJson() => {
    "images": images,
    "title": title,
    "subtitle": subtitle,
    "title2": title2,
    "title3": title3,
  };
}

List<EncounterModel> Encounter = [
  EncounterModel(images: "assets/images/Rectangle 6.png", title: "ChenXi Shi", subtitle: "There are many variations of passages of Lorem Ipsum available,", title2: "23", title3: "Postgraduate"),
  EncounterModel(images: "assets/images/Rectangle 7.png", title: "Scarlett", subtitle: "There are many variations of passages of Lorem Ipsum available,", title2: "26", title3: "Postgraduate"),
  EncounterModel(images: "assets/images/Rectangle 8.png", title: "Mateo", subtitle: "There are many variations of passages of Lorem Ipsum available,", title2: "31", title3: "Postgraduate"),
  EncounterModel(images: "assets/images/Rectangle 9.png", title: "ChenXi Shi", subtitle: "There are many variations of passages of Lorem Ipsum available,", title2: "23", title3: "Postgraduate"),
  EncounterModel(images: "assets/images/Rectangle 6.png", title: "ChenXi Shi", subtitle: "There are many variations of passages of Lorem Ipsum available,", title2: "23", title3: "Postgraduate"),
  EncounterModel(images: "assets/images/Rectangle 7.png", title: "ChenXi Shi", subtitle: "There are many variations of passages of Lorem Ipsum available,", title2: "23", title3: "Postgraduate"),
];
