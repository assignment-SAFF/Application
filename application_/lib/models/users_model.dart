class UserModel {
  late final String userName;
  late final String userEmail;
  late final String userPhone;
  late final String id;

  UserModel(
      {required this.userName,
      required this.userEmail,
      required this.userPhone,
      required this.id});

  UserModel.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    data['id'] = this.id;
    return data;
  }
}
