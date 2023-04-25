import 'package:test_notification/shared/presentation/model/plans_model.dart';

class TestsModel {
  String? id, name, price;
  List<PlansModel>? plans;
  bool? outSource, active, homeCollection;
  TestsModel({
    this.active,
    this.id,
    this.homeCollection,
    this.name,
    this.outSource,
    this.plans,
    this.price,
  });
  TestsModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    id = json['id'].toString();
    homeCollection = json['homeCollection'];
    name = json['name'];
    outSource = json['outSource'];
    plans = [...json['plans']];
    price = json['price'].toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['active'] = active;
    data['id'] = id;
    data['homeCollection'] = homeCollection;
    data['name'] = name;
    data['outSource'] = outSource;
    data['plans'] = plans;
    data['price'] = price;
    return data;
  }
}
