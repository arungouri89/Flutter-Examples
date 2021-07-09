class UserData {
  final int userId;
  final int id;
  final String title;

  UserData({this.userId, this.id, this.title});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}