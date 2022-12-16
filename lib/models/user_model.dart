class UserModel {
  String? userId;
  String? password;
  String? mobile;
  String? cardNumber;
  int? balance;

  UserModel(
      {this.userId, this.password, this.mobile, this.cardNumber, this.balance});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    password = json['password'];
    mobile = json['mobile'];
    cardNumber = json['cardNumber'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['password'] = this.password;
    data['mobile'] = this.mobile;
    data['cardNumber'] = this.cardNumber;
    data['balance'] = this.balance;
    return data;
  }
}
