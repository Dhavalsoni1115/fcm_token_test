class PlansModel {
  String? planId, planName, price;
  PlansModel({
    required this.planId,
    required this.planName,
    required this.price,
  });
  PlansModel.fromJson(Map<String, dynamic> json) {
    planId = json['planId'];
    planName = json['planName'];
    price = json['price'].toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['planId'] = planId;
    data['planName'] = planName;
    data['price'] = price;
    return data;
  }
}