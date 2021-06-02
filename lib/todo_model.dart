class TodoModel {
  int? userId;
  int id;
  String? title;
  bool? completed;

  TodoModel({
    required this.id,
    this.userId,
    this.title,
    this.completed,
  });

  factory TodoModel.fromJson(Map json) {
    return TodoModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  Map ToJson() {
    return {
      'userId': userId, 
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}
