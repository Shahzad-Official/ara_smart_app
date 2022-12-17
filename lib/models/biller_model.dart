class BillerModel {
  String? name;
  String? type;
  String? cardNumber;
  int? balance;

  BillerModel({this.name, this.type, this.cardNumber, this.balance});

  BillerModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    cardNumber = json['cardNumber'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['cardNumber'] = this.cardNumber;
    data['balance'] = this.balance;
    return data;
  }
}
