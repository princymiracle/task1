// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

// class PostModel {
//   int userId;
//   int id;
//   String title;
//   String body;
//
//   PostModel({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });
//
//   factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }
// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);




class CommentModels {
  int id;
  String body;
  int postId;
  User user;

  CommentModels({
    required this.id,
    required this.body,
    required this.postId,
    required this.user,
  });

  factory CommentModels.fromJson(Map<String, dynamic> json) => CommentModels(
    id: json["id"],
    body: json["body"],
    postId: json["postId"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "body": body,
    "postId": postId,
    "user": user.toJson(),
  };
}

class User {
  int id;
  String username;

  User({
    required this.id,
    required this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
  };
}
