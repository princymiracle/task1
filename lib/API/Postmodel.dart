
class PostModel {
  int id;
  String title;
  String body;
  int userId;
  List<String> tags;
  int reactions;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    id: json["id"],
    title: json["title"],
    body: json["body"],
    userId: json["userId"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    reactions: json["reactions"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "body": body,
    "userId": userId,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "reactions": reactions,
  };
}

