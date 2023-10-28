class UserModel {
  String? userName;
  String? userEmail;
  String? userPhone;
  String? id;

  UserModel({this.userName, this.userEmail, this.userPhone, this.id});

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