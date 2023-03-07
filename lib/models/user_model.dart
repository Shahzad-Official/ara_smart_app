class UserModel {
  String? userId;
  String? password;
  String? mobile;
  String? cardNumber;
  String? balance;

  UserModel(
      {this.userId, this.password, this.mobile, this.cardNumber, this.balance});

  UserModel.fromJson(json) {
    userId = json['userId'];
    password = json['password'];
    mobile = json['mobile'];
    cardNumber = json['cardNumber'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['userId'] = userId;
    data['password'] = password;
    data['mobile'] = mobile;
    data['cardNumber'] = cardNumber;
    data['balance'] = balance;
    return data;
  }
}
