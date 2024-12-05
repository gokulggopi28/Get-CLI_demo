class PostUserModel {
  final int id;
  final String title;
  final String body;

  PostUserModel({
    required this.id,
     required this.title,
      required this.body
      });

    factory PostUserModel.fromJson(Map<String, dynamic> json) {
    return PostUserModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
  
}