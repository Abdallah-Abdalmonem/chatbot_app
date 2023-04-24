class PostsModel {
  final String message;
  final String createdTime;

  PostsModel({
    required this.message,
    required this.createdTime,
  });

  factory PostsModel.fromJson(Map<String, dynamic> data) {
    return PostsModel(
      message: data['message'],
      createdTime: data["created_time"],
    );
  }
}
